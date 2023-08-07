// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {IGreenBond} from "interfaces/IGreenBond.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";

/**
 * @title Purchase Power Agreement (PPA) contract
 * @dev This contract represents the Purchase Power Agreement between a company and investors.
 * @dev It acts as a router for payment processing between the company, investors, and suppliers.
 * @author @sandybradley
 */
contract PPA {
    using SafeTransferLib for ERC20;

    // PPA parameters
    address public company; // aka electricity consumer
    address public supplier;
    address public greenBond; // bond contract
    uint256 public term;
    uint256 public annualIncrease; // 10% annually
    uint256 public paymentFrequency;

    // Payment details
    uint256 public paymentStartTimestamp;
    uint256 public lastIncomeTimestamp;
    uint256 public totalSupplierPayments;
    uint256 public totalIncomeReceived;

    // PPA states
    enum PPAState { Inactive, Active, Completed }
    PPAState public state;

    // Events
    event PPAActivated(address indexed company, address indexed greenBond);
    event IncomeReceived(address token, uint256 amount, uint256 timestamp);
    event SupplierPayment(address supplier, address token, uint256 amount);

    error Unauthorized();

    /**
     * @dev Initializes the PPA contract.
     * @param company_ The address of the company entering the PPA.
     * @param greenBond_ The address of the GreenBond contract.
     * @param term_ The duration of the PPA in seconds.
     * @param annualIncrease_ The annual increase in payment amount (10% annually).
     * @param paymentFrequency_ Number of payments per year
     */
    constructor(
        address company_,
        address supplier_,
        address greenBond_,
        uint256 term_,
        uint256 annualIncrease_,
        uint256 paymentFrequency_
    ) {
        company = company_;
        supplier = supplier_;
        greenBond = greenBond_;
        term = term_;
        annualIncrease = annualIncrease_;
        paymentFrequency = paymentFrequency_;
        state = PPAState.Inactive;
    }

    function _authCheck() internal view {
        require(msg.sender == company || msg.sender == greenBond, "PPA: Only the company can call this function.");
    }

    modifier onlyActiveState() {
        require(state == PPAState.Active, "PPA: This function can only be called in the Active state.");
        _;
    }

    /**
     * @dev Activates the PPA contract.
     * This function can only be called by the company.
     */
    function activatePPA() public {
        _authCheck();
        require(state == PPAState.Inactive, "PPA: The PPA is already activated.");
        paymentStartTimestamp = block.timestamp;
        state = PPAState.Active;
        emit PPAActivated(company, greenBond);
    }

    function paySupplier(address token, uint256 amount) external {
        if(msg.sender != greenBond) revert Unauthorized();
        if(state == PPAState.Inactive) {
            activatePPA();
        }
        totalSupplierPayments += amount;
        ERC20(token).safeTransferFrom(greenBond, supplier, amount);
        emit SupplierPayment(supplier, token, amount);
    }

    function calculateRepaymentAmount() internal view onlyActiveState returns (uint256) {
        require(block.timestamp >= paymentStartTimestamp, "Invalid time");

        uint256 remainingTime = (paymentStartTimestamp + term) - block.timestamp;
        uint256 totalPayments = remainingTime / paymentFrequency;
        
        uint256 remainingBalance = totalSupplierPayments - totalIncomeReceived;
        
        // Calculate the interest accrued over the remaining time
        uint256 interestAccrued = (remainingBalance * annualIncrease * remainingTime) / (totalPayments * 100);

        // Calculate the repayment amount per payment interval
        uint256 repaymentAmountPerPayment = (remainingBalance + interestAccrued) / totalPayments;

        return repaymentAmountPerPayment;
    }

    /**
     * @dev Allows the PPA contract to receive payments from customers.
     * This function can only be called by customers after making a payment to the company.
     */
    function receiveIncome(address token, uint256 amount) external onlyActiveState {
        require(amount > 0, "PPA: Payment amount must be greater than zero.");
        // Calculate the amount to pay considering the annual increase
        uint256 amountToPay = calculateRepaymentAmount();
        // Check if the payment amount is correct
        require(amount >= amountToPay, "PPA: Incorrect payment amount.");
        totalIncomeReceived += amount;
        // Update the last payment timestamp
        lastIncomeTimestamp = block.timestamp;
        // Emit the PaymentReceived event
        emit IncomeReceived(token, amount, block.timestamp);
        // Forward the payment to the GreenBond contract
        ERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        ERC20(token).safeApprove(greenBond, amount);
        IGreenBond(greenBond).receiveIncome(token, amount);
    }

    /**
     * @dev Completes the PPA after the term is over.
     * This function can only be called by the company.
     */
    function completePPA() external onlyActiveState {
        _authCheck();
        require(block.timestamp >= paymentStartTimestamp + term, "PPA: Term not over yet.");
        // Set the state to Completed
        state = PPAState.Completed;
    }
}