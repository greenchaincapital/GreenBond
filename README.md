# Green Bond ![Foundry](https://github.com/greenchaincapital/GreenBond/actions/workflows/test.yml/badge.svg?branch=main)

### Green Bond Contract on Arbitrum ([ERC4626 compatible](https://ethereum.org/en/developers/docs/standards/tokens/erc-4626/))

## GreenBond Summary

The GreenBond contract is designed to provide liquidity and rewards to users who deposit stablecoins and LP tokens from the Curve 2Pool (USDT/USDC) pool. It offers a fixed annual reward percentage and enforces a minimum lock-up period for deposited assets. Additionally, it supports rewards compounding and allows governance to manage contract parameters and recover tokens.

Green energy projects are registered for asset deployment. Master contract agreements are publically linked for transparency and accountability of operations. Income is received from these projects to pay dividends to investors. 

### Interaction Between GreenBond and Projects:

- Reward Accumulation: Users deposit stablecoins or LP tokens into the GreenBond contract to earn rewards over time. These rewards are calculated based on the fixed annual interest rate and the amount of time the assets are locked. Users can claim and compound their rewards.

- Income Receipt: The Projects generate income for the investors.

- Supplier Payment: The GreenBond contract, under governance control, can pay suppliers of the company. Governance initiates the payment by calling the paySuppliers function, specifying the project details.

- Activation and Completion: Each project can be activated by governance, marking the start of the payment process. Once the term of the agreement is over, the company can complete the project by calling the completeProject function.

- Governance Control: The GreenBond contract is under governance control, allowing designated addresses to manage contract parameters, such as the fixed interest rate, lock-up period, and governance address.

By combining the features of the GreenBond and project finance agreements, investors can earn rewards for providing liquidity, while the contract benefits from a flexible payment processing solution that supports income receipt, supplier payments, and contract completion.

[GreenBond setup docs](docs/greenbond.md)


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