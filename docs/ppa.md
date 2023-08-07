# Purchase Power Agreement (PPA) Contract Setup Guide

The Purchase Power Agreement (PPA) contract is designed to facilitate agreements between companies, investors (GreenBond contract), and suppliers. It acts as a payment router for processing payments between these entities, ensuring that suppliers are paid, and investors receive income.
## Contract Parameters

- company: The address of the electricity-consuming company (customer) that enters the PPA.
- supplier: The address of the electricity supplier.
- greenBond: The address of the GreenBond contract (investors).
- term: The duration of the PPA in seconds.
- annualIncrease: The annual increase in payment amount (expressed as a percentage).
- paymentFrequency: The number of payments per year.

## Contract States

The PPA contract has three possible states:

- Inactive: The initial state before activation.
- Active: The PPA is active and processing payments.
- Completed: The PPA has completed its term.

## Contract Functions

- activatePPA(): Activates the PPA contract. Can only be called by the company. It starts the payment processing and transitions the contract to the Active state.

- paySupplier(address token, uint256 amount) external: Used by the GreenBond contract to pay the supplier. Ensures that the PPA is activated if it's in the Inactive state. Records supplier payments.

- calculateRepaymentAmount() internal view returns (uint256): Internal function that calculates the repayment amount per payment interval based on the remaining balance and interest accrued. Only callable in the Active state.

- receiveIncome(address token, uint256 amount) external: Allows customers to make payments to the PPA. Calculates the expected payment amount based on the annual increase and ensures correct payments are received.

- completePPA() external: Completes the PPA after the term is over. Can only be called by the company. Transitions the contract to the Completed state.

## Event Notifications

- PPAActivated(address indexed company, address indexed greenBond): Emitted when the PPA is activated.

- IncomeReceived(address token, uint256 amount, uint256 timestamp): Emitted when income is received from customers.

- SupplierPayment(address supplier, address token, uint256 amount): Emitted when the supplier is paid by the GreenBond contract.

## Example Usage

- Deploy the PPA contract, specifying the company, supplier, GreenBond contract address, term, annual increase, and payment frequency.

- Activate the PPA contract using the activatePPA() function, which can only be called by the company.

- GreenBond governance can call the paySupplier(address token, uint256 amount) function to pay the supplier through the PPA contract.

- Customers can make payments using the receiveIncome(address token, uint256 amount) function, which calculates the correct payment amount based on the annual increase.

- After the term is over, the company can call the completePPA() function to complete the PPA.