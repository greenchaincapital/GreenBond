// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {IGauge} from "../interfaces/IGAUGE.sol";
import {IPool} from "../interfaces/IPOOL.sol";

import {ERC20} from "solmate/tokens/ERC20.sol";
import {WETH} from "solmate/tokens/WETH.sol";
import {SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

/**
 * Bond design:
 * 0) Arbitrum deployment
 * 1) ERC4626 guidance
 * 2) Accept [USDC, USDT, Curve2CoinStablePoolToken(USDC/USDT)] tokens for deposits for ease of investment
 * 3) Treasurey Tokens are USDC / USDT (low risk)
 * 4) Rewards are fixed at 10% per year pro-rata
 * 5) Minimum lock-up period of investment
 * 6) All balances are in terms of Curve 2Pool (USDC/USDT) LP value, which mitigates dpeg attacks
 * Notes on Risks:
 * 0) Systemic risk of Chain
 * 1) This contract (e.g. re-entrancy or unforeseen hacks)
 * 2) Treasurey tokens value
 * 3) Underlying USD value
 * Notes on Improvements:
 * 1) Cross-chain deployment and chain risk management
 */

/// @title GreenBond vault contract to provide liquidity and earn rewards
/// @author @sandybradley
/// @notice ERC4626 with some key differences:
/// 0) Accept [USDC, USDT, Curve2CoinStablePoolToken(USDC/USDT)] tokens for deposits
/// 1) Treasurey tokens are deposited directly
/// 2) All other tokens received are swapped for a treasurey token
contract GreenBond is ERC20("GreenBond", "gBOND", 18) {
    using SafeTransferLib for ERC20;
    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                               ERRORS
    //////////////////////////////////////////////////////////////*/

    error InsufficientAsset();
    error InsufficientLiquidity();
    error InsufficientBalance();
    error InsufficientAllowance();
    error UnknownToken();
    error ZeroShares();
    error ZeroAmount();
    error ZeroAddress();
    error Overflow();
    error IdenticalAddresses();
    error InsufficientLockupTime();
    error UnAuthorized();
    error NoRewardsToClaim();

    /*//////////////////////////////////////////////////////////////
                               CONSTANTS
    //////////////////////////////////////////////////////////////*/

    uint8 public constant USDC_INDEX = 0;
    uint8 public constant USDT_INDEX = 1;

    /// @notice Fixed reward percent per year
    uint16 public FIXED_INTEREST = 10;

    /// @notice Deposit lockup time, default 6 months
    uint64 public LOCKUP = 6 * 30 days;

    /// @notice Governance address
    address public GOV;

    /// @notice USDC address
    address public constant USDC = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;

    /// @notice USDT address
    address public constant USDT = 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9;

    /// @notice Curve 2 Pool (USDT / USDC)
    address public constant STABLE_POOL = 0x7f90122BF0700F9E7e1F688fe926940E8839F353;

    /// @notice Curve Gauge for 2 Pool (USDT / USDC)
    address public constant GAUGE = 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f;

    /// @notice Transient tokens deployed to project (~ 6 months lock-up)
    uint256 public DEPLOYED_TOKENS;

    /// @notice Time weighted average lockup time
    mapping(address => uint256) public depositTimestamps;

    mapping(address => uint256) private rewards;

    mapping(address => uint256) private lastClaimTimestamps;

    uint256 private constant YEAR_IN_SECONDS = 365 days;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit event
    event Deposit(address indexed depositor, address token, uint256 amount, uint256 shares);

    /// @notice Withdraw event
    event Withdraw(address indexed receiver, address token, uint256 amount, uint256 shares);

    event Claim(address indexed receiver, address token, uint256 amount, uint256 shares);
    event Compound(address indexed receiver, uint256 shares);
    event DeployedAssets(address indexed receiver, uint256 assets);
    event DepositAssets(address indexed sender, uint256 assets);

    /*//////////////////////////////////////////////////////////////
                                 CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    constructor() {
        GOV = tx.origin; // CREATE2 deployment requires tx.origin
    }

    /*//////////////////////////////////////////////////////////////
                                 GOVERNANCE
    //////////////////////////////////////////////////////////////*/

    function changeLockup(uint256 newLockup) external {
        if (msg.sender != GOV) revert UnAuthorized();
        LOCKUP = newLockup;
    }

    function changeGov(address newGov) external {
        if (msg.sender != GOV) revert UnAuthorized();
        GOV = newGov;
    }

    function changeInterest(uint16 newInterest) external {
        if (msg.sender != GOV) revert UnAuthorized();
        FIXED_INTEREST = newInterest;
    }

    function deployAssets(address token, address receiver, uint256 shares) external returns (uint256 tokenAmount) {
        if (msg.sender != GOV) revert UnAuthorized();
        if (token != USDC && token != USDT && token != STABLE_POOL) revert UnknownToken();
        if (IGauge(GAUGE).balanceOf(address(this)) < shares) revert InsufficientLiquidity();
        assets = previewRedeem(shares);
        if (_isZero(assets)) revert ZeroAmount();
        tokenAmount = _beforeWithdraw(token, assets);

        DEPLOYED_TOKENS += assets;

        emit DeployedAssets(receiver, assets);

        ERC20(token).safeTransfer(receiver, tokenAmount);
    }

    function depositAssets(address token, uint256 tokenAmount) external {
        if (msg.sender != GOV) revert UnAuthorized();
        if (ERC20(token).allowance(msg.sender) < tokenAmount) revert InsufficientAllowance();
        uint256 amount; // amount in usdt
        uint256 liquidity;
        if (token == USDC || token == USDT) {
            // Need to transfer before minting or ERC777s could reenter.
            ERC20(token).safeTransferFrom(msg.sender, address(this), tokenAmount);
            liquidity = _stakeLiquidity(token, tokenAmount);
        } else if (token == STABLE_POOL) {
            // Need to transfer before minting or ERC777s could reenter.
            ERC20(token).safeTransferFrom(msg.sender, address(this), tokenAmount);
            liquidity = tokenAmount;
        } else {
            revert UnknownToken();
        }
        shares = previewDeposit(liquidity);
        if (_isZero(shares)) revert ZeroShares();
        // deposit LP to curve
        ERC20(STABLE_POOL).approve(GAUGE, liquidity);
        IGauge(GAUGE).deposit(liquidity);

        DEPLOYED_TOKENS -= liquidity;
        emit DepositAssets(msg.sender, liquidity);
    }

    /*//////////////////////////////////////////////////////////////
                        DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit token for gBOND
    /// @dev Requires token approval or value sent with call
    /// @param token Address of token being deposited (For eth sent use weth address)
    /// @param tokenAmount Amount of token to deposit
    /// @return shares returned to sender for deposit
    function deposit(address token, uint256 tokenAmount) external payable virtual returns (uint256 shares) {
        if (ERC20(token).allowance(msg.sender) < tokenAmount) revert InsufficientAllowance();
        uint256 amount; // amount in usdt
        uint256 liquidity;
        if (token == USDC || token == USDT) {
            // Need to transfer before minting or ERC777s could reenter.
            ERC20(token).safeTransferFrom(msg.sender, address(this), tokenAmount);
            liquidity = _stakeLiquidity(token, tokenAmount);
        } else if (token == STABLE_POOL) {
            // Need to transfer before minting or ERC777s could reenter.
            ERC20(token).safeTransferFrom(msg.sender, address(this), tokenAmount);
            liquidity = tokenAmount;
        } else {
            revert UnknownToken();
        }
        shares = previewDeposit(liquidity);
        if (_isZero(shares)) revert ZeroShares();
        // deposit LP to curve
        ERC20(STABLE_POOL).approve(GAUGE, liquidity);
        IGauge(GAUGE).deposit(liquidity);

        // Set the deposit timestamp for the user
        _updateDepositTimestamp(msg.sender, shares);

        _mint(msg.sender, shares);

        emit Deposit(msg.sender, token, tokenAmount, shares);
    }

    function _updateDepositTimestamp(address account, uint256 shares) internal {
        // Set the deposit timestamp for the user
        uint256 prevBalance = balanceOf[account];
        if (_isZero(prevBalance)) {
            depositTimestamps[account] = block.timestamp;
        } else {
            // multiple deposits, so weight timestamp by amounts
            unchecked {
                depositTimestamps[account] =
                    ((depositTimestamps[account] * prevBalance) + (block.timestamp * shares)) / (prevBalance + shares);
            }
        }
    }

    /// @notice Withdraw shares for usdt. Requires sender to have approved vault to spend share amount
    /// @param token Either Usdt or Usdc
    /// @param shares Shares to withdraw
    /// @return assets amount of usdt returned
    function withdraw(address token, uint256 shares) public virtual returns (uint256 tokenAmount) {
        if (token != USDC && token != USDT && token != STABLE_POOL) revert UnknownToken();
        if (block.timestamp < depositTimestamps[msg.sender] + LOCKUP) revert InsufficientLockupTime();
        if (IGauge(GAUGE).balanceOf(address(this)) < shares) revert InsufficientLiquidity();

        _compound();
        if (shares > balanceOf[msg.sender]) revert InsufficientBalance();

        assets = previewRedeem(shares);
        if (_isZero(assets)) revert ZeroAmount();

        tokenAmount = _beforeWithdraw(token, assets);

        _burn(msg.sender, shares);

        emit Withdraw(msg.sender, token, tokenAmount, shares);

        ERC20(token).safeTransfer(msg.sender, tokenAmount);
    }

    function claimRewards(address token) external returns (uint256 tokenAmount) {
        if (token != USDC && token != USDT && token != STABLE_POOL) revert UnknownToken();
        uint256 unclaimedRewards = _calculateUnclaimedRewards(msg.sender);
        if (_isZero(unclaimedRewards)) revert NoRewardsToClaim();
        assets = previewRedeem(unclaimedRewards);
        if (_isZero(assets)) revert ZeroAmount();

        unchecked {
            rewards[msg.sender] += unclaimedRewards;
            lastClaimTimestamps[msg.sender] = block.timestamp;
        }
        
        tokenAmount = _beforeWithdraw(token, assets);
        ERC20(token).safeTransfer(msg.sender, tokenAmount);

        emit RewardsClaimed(msg.sender, token, tokenAmount, unclaimedRewards);
    }

    function _compound() internal {
        uint256 unclaimedRewards = _calculateUnclaimedRewards(msg.sender);
        if (_isZero(unclaimedRewards)) return;

        unchecked {
            rewards[msg.sender] += unclaimedRewards;
            lastClaimTimestamps[msg.sender] = block.timestamp;
        }

        _mint(msg.sender, unclaimedRewards);

        emit RewardsCompounded(msg.sender, unclaimedRewards);
    }

    function _calculateUnclaimedRewards(address user) internal view returns (uint256 unclaimedRewards) {
        uint256 lastClaimTimestamp = lastClaimTimestamps[user];
        if (_isZero(lastClaimTimestamp)) {
            // User has never claimed rewards before, so calculate from deposit timestamp
            lastClaimTimestamp = depositTimestamps[user];
        }
        unchecked {
            uint256 elapsedTime = block.timestamp - lastClaimTimestamp;
            unclaimedRewards = uint256(FIXED_INTEREST) * elapsedTime * balanceOf[user] / (100 * YEAR_IN_SECONDS);
        }
        return unclaimedRewards;
    }

    /*//////////////////////////////////////////////////////////////
                            ACCOUNTING LOGIC
    //////////////////////////////////////////////////////////////*/

    function totalAssets() public view virtual returns (uint256) {
        return (DEPLOYED_TOKENS + IGauge(GAUGE).balanceOf(address(this)));
    }

    function convertToShares(uint256 assets) public view virtual returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? assets : assets.mulDivDown(supply, totalAssets());
    }

    function convertToAssets(uint256 shares) public view virtual returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? shares : shares.mulDivDown(totalAssets(), supply);
    }

    function previewDeposit(uint256 assets) public view virtual returns (uint256) {
        return convertToShares(assets);
    }

    function previewRedeem(uint256 shares) public view virtual returns (uint256 assets) {
        assets = convertToAssets(shares);
    }

    /*//////////////////////////////////////////////////////////////
                     DEPOSIT/WITHDRAWAL LIMIT LOGIC
    //////////////////////////////////////////////////////////////*/

    function maxDeposit(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    function maxWithdraw(address owner) public view virtual returns (uint256) {
        return convertToAssets(balanceOf[owner]);
    }

    function maxRedeem(address owner) public view virtual returns (uint256) {
        return balanceOf[owner];
    }

    /*//////////////////////////////////////////////////////////////
                          INTERNAL HOOKS LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @notice token amount from assets
    function _tokenAmountFromAssets(int128 tokenIndex, uint256 assets) internal view returns (uint256 tokenAmount) {
        tokenAmount = IPool(STABLE_POOL).calc_withdraw_one_coin(assets, tokenIndex);
    }

    function _beforeWithdraw(address token, uint256 assets) internal virtual returns (uint256) {
        // withdraw from Curve Gauge
        IGauge(GAUGE).withdraw(assets, address(this), true);
        if (token == STABLE_POOL) return assets;
        // withdraw from Curve pool
        uint128 index;
        if (token == USDT_INDEX) index = 1;
        return IPool(STABLE_POOL).remove_liquidity_one_coin(assets, index);
    }

    /// @notice Adds liquidity to an currve 2 pool from USDT / USDC
    /// @param assets amount of usdt
    /// @return liquidity amount of liquidity token received, sent to msg.sender
    function _stakeLiquidity(address token, uint256 assets) internal returns (uint256 liquidity) {
        if (assets < 2000) revert InsufficientAsset();
        uint256[] memory amounts = new uint256[2]();
        if (token == USDT) amounts[USDT_INDEX] = assets;
        else amounts[USDC_INDEX] = assets;
        uint256 min_mint_amount = IPool(STABLE_POOL).calc_token_amount(amounts, true);
        ERC20(token).approve(STABLE_POOL, assets);
        liquidity = IPool(STABLE_POOL).add_liquidity(amounts, min_mint_amount);
    }

    /// @custom:gas Uint256 zero check gas saver
    /// @notice Uint256 zero check gas saver
    /// @param value Number to check
    function _isZero(uint256 value) internal pure returns (bool boolValue) {
        /// @solidity memory-safe-assembly
        assembly {
            boolValue := iszero(value)
        }
    }

    /// @custom:gas Uint256 not zero check gas saver
    /// @notice Uint256 not zero check gas saver
    /// @param value Number to check
    function _isNonZero(uint256 value) internal pure returns (bool boolValue) {
        /// @solidity memory-safe-assembly
        assembly {
            boolValue := iszero(iszero(value))
        }
    }

    /// @notice Function to receive Ether. msg.data must be empty
    receive() external payable virtual {}

    /// @notice Fallback function is called when msg.data is not empty
    fallback() external payable {}

    /// @dev override erc20 transfer to update receiver deposit timestamp
    function transfer(address to, uint256 amount) public override returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        _updateDepositTimestamp(to, amount);

        return true;
    }

    /// @dev override erc20 transferFrom to update receiver deposit timestamp
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        _updateDepositTimestamp(to, amount);

        return true;
    }

}
