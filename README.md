# Green Bond ![Foundry](https://github.com/greenchaincapital/GreenBond/actions/workflows/test.yml/badge.svg?branch=main)

### Green Bond Contract on Arbitrum ([ERC4626 compatible](https://ethereum.org/en/developers/docs/standards/tokens/erc-4626/))

## GreenBond and PPA Interaction Summary

The GreenBond contract is designed to provide liquidity and rewards to users who deposit stablecoins and LP tokens from the Curve 2Pool (USDT/USDC) pool. It offers a fixed annual reward percentage and enforces a minimum lock-up period for deposited assets. Additionally, it supports rewards compounding and allows governance to manage contract parameters and recover tokens.

On the other hand, the Purchase Power Agreement (PPA) contract represents an agreement between a company (electricity consumer) and investors. The PPA is a router for payment processing between the company, investors, and suppliers. It supports activation, income receipt, supplier payment, and completion of the agreement.

### Interaction Between GreenBond and PPA:

- Reward Accumulation: Users deposit stablecoins or LP tokens into the GreenBond contract to earn rewards over time. These rewards are calculated based on the fixed annual interest rate and the amount of time the assets are locked. Users can claim and compound their rewards.

- Income Receipt: The PPA contract generates income for the company (electricity consumer) over time. The income is received from customers who make payments and is transferred to the PPA contract.

- Supplier Payment: The GreenBond contract, under governance control, can pay suppliers of the company. Governance initiates the payment by calling the paySuppliers function, specifying the PPA contract and the token amount. The GreenBond contract transfers the specified token amount to the supplier.

- Income Forwarding: Registered PPA contracts can forward their generated income to the GreenBond contract by calling the receiveIncome function. This function enables the GreenBond contract to track and manage the income received from various PPAs.

- Activation and Completion: The PPA contract can be activated by the company, marking the start of the payment process. Once the term of the agreement is over, the company can complete the PPA by calling the completePPA function.

- Interaction with GreenBond: The PPA contract interacts with the GreenBond contract to facilitate income forwarding and supplier payments. This interaction enables the PPA to leverage the liquidity and rewards provided by the GreenBond protocol.

- Governance Control: The GreenBond contract is under governance control, allowing designated addresses to manage contract parameters, such as the fixed interest rate, lock-up period, and governance address.

By combining the features of the GreenBond and PPA contracts, investors can earn rewards for providing liquidity, while the company benefits from a flexible payment processing solution that supports income receipt, supplier payments, and contract completion.

[GreenBond setup docs](docs/greenbond.md)

[PPA setup docs](docs/ppa.md)

## Development and testing

Copy `.env.example` to `.env` and fill out the variables.

Project uses [Foundry](https://book.getfoundry.sh).

### Build contracts
```bash
forge build
```

### Test contracts
```bash
./script/test.sh
```

[Test results](./docs/test-results.md)

### Deploy contract
```bash
./script/deploy.sh
```