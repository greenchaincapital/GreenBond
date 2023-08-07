// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IPPA {
    /**
     * @dev Activates the PPA contract.
     * This function can only be called by the company or greenbond.
     */
    function activatePPA() external;

    function paySupplier(address token, uint256 amount) external;

    /**
     * @dev Allows the PPA contract to receive payments from customers.
     * This function can only be called by customers after making a payment to the company.
     */
    function receivePayment(uint256 amount) external payable;

    /**
     * @dev Completes the PPA after the term is over.
     * This function can only be called by the company.
     */
    function completePPA() external;
}