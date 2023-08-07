# GreenBond Contract Setup Guide

The GreenBond contract is a liquidity and rewards protocol that allows users to deposit stablecoins and LP tokens from the Curve 2Pool (USDT/USDC) pool to earn rewards over time. It also supports time-weighted average lockup and rewards compounding features.

## Contract Parameters and Constants

- `FIXED_INTEREST`: The fixed annual reward percentage.
- `LOCKUP`: The minimum lock-up period for deposits in seconds.
- `GOV`: The governance address that can perform administrative functions.
- `USDC`, `USDT`, `STABLE_POOL`: Addresses of the USDC token, USDT token, and the Curve 2Pool (USDT/USDC) pool.
- `GAUGE`: Address of the Curve Gauge for the 2Pool.
- `DEPLOYED_TOKENS`: Counter for tokens temporarily deployed to the contract.
- `YEAR_IN_SECONDS`: A constant representing a year in seconds.

## Contract Functions

- `deposit(address token, uint256 tokenAmount) external returns (uint256 shares)`: Deposits stablecoins or LP tokens to the contract to earn rewards. Requires approval or sending tokens with the call.
- `withdraw(address token, uint256 shares) external returns (uint256 tokenAmount)`: Withdraws shares and converts them to stablecoins or LP tokens.
- `claimRewards(address token) external returns (uint256 tokenAmount)`: Claims earned rewards in stablecoins or LP tokens.
- `paySuppliers(address ppa, address token, uint256 tokenAmount) external`: Allows governance to pay suppliers through a registered PPA contract.
- `receiveIncome(address token, uint256 tokenAmount) external`: Allows registered PPAs to forward income to the GreenBond contract.
- `registerPpaContract(address ppa) external`: Allows governance to register a new PPA contract with the GreenBond contract.
- `recoverToken(address token, address receiver, uint256 tokenAmount) external`: Allows governance to recover tokens accidentally sent to the contract.

## Deposit and Withdrawal Logic

- `deposit(address token, uint256 tokenAmount)`: Deposits stablecoins or LP tokens to the contract, minting gBOND tokens in return.
- `withdraw(address token, uint256 shares)`: Converts gBOND shares back to stablecoins or LP tokens and performs withdrawal.

## Rewards and Lockup Logic

- `claimRewards(address token)`: Claims earned rewards and compounds them into gBOND shares.
- `claimRewards(address token)`: Claims earned rewards in stablecoins or LP tokens.
- `claimRewards(address token)`: Claims earned rewards in stablecoins or LP tokens.

## Account and Asset Management

- `totalAssets()`: Returns the total assets (tokens) managed by the contract.
- `convertToShares(uint256 assets)`: Converts assets to gBOND shares.
- `convertToAssets(uint256 shares)`: Converts gBOND shares back to assets.
- `previewDeposit(uint256 assets)`: Previews the amount of gBOND shares that will be received upon deposit.
- `previewRedeem(uint256 shares)`: Previews the amount of assets that will be received upon redemption.

## Governance and Administrative Functions

- `changeLockup(uint64 newLockup) external`: Allows governance to change the lockup period for deposits.
- `changeGov(address newGov) external`: Allows governance to change the governance address.
- `changeInterest(uint16 newInterest) external`: Allows governance to change the fixed interest rate.
- `recoverToken(address token, address receiver, uint256 tokenAmount) external`: Allows governance to recover tokens accidentally sent to the contract.
- `registerPpaContract(address ppa) external`: Allows governance to register a new PPA contract with the GreenBond contract.
- `paySuppliers(address ppa, address token, uint256 tokenAmount) external`: Allows governance to pay suppliers through a registered PPA contract.

## Events

- `Deposit(address indexed depositor, address token, uint256 amount, uint256 shares)`: Emitted when a deposit is made.
- `Withdraw(address indexed receiver, address token, uint256 amount, uint256 shares)`: Emitted when a withdrawal is made.
- `Claim(address indexed receiver, address token, uint256 amount, uint256 shares)`: Emitted when rewards are claimed.
- `Compound(address indexed receiver, uint256 shares)`: Emitted when rewards are compounded.
- `PaidSuppliers(address indexed receiver, uint256 assets)`: Emitted when suppliers are paid.
- `ReceivedIncome(address indexed sender, uint256 assets)`: Emitted when income is received from a registered PPA.
- `RewardsClaimed(address indexed sender, address token, uint256 tokenAmount, uint256 shares)`: Emitted when rewards are claimed.
- `RewardsCompounded(address indexed sender, uint256 shares)`: Emitted when rewards are compounded.
- `PpaRegistered(address indexed ppa)`: Emitted when a new PPA contract is registered.

## Example Usage

1. Deploy the GreenBond contract.
2. Deposit stablecoins (USDC, USDT) or LP tokens (Curve 2Pool) to the contract to start earning rewards.
3. Claim and compound rewards using the `claimRewards` function.
4. Withdraw stablecoins or LP tokens using the `withdraw` function after the lock-up period.
5. Governance can manage contract parameters, recover tokens, and register PPA contracts.
6. Registered PPA contracts can pay suppliers and forward income to the GreenBond contract.
