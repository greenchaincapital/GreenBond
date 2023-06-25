# Green Bond ![Foundry](https://github.com/greenchaincapital/GreenBond/actions/workflows/test.yml/badge.svg?branch=main)

### Green Bond Contract on Arbitrum ([ERC4626 compatible](https://ethereum.org/en/developers/docs/standards/tokens/erc-4626/))

Bond design:
- Arbitrum deployment
- ERC4626 guidance
- Accept [USDC, USDT, Curve2CoinStablePoolToken(USDC/USDT)] tokens for deposits for ease of investment
- Treasurey Tokens are USDC / USDT (low risk)
- Rewards are fixed at 10% per year pro-rata
- Minimum lock-up period of investment (6 months)
- All balances are in terms of Curve 2Pool (USDC/USDT) LP value, which mitigates dpeg attacks

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