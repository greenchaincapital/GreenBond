pragma solidity ^0.8.10;

interface IPool {
    event AddLiquidity(
        address indexed provider, uint256[2] token_amounts, uint256[2] fees, uint256 invariant, uint256 token_supply
    );
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event CommitNewAdmin(uint256 indexed deadline, address indexed admin);
    event CommitNewFee(uint256 indexed deadline, uint256 fee, uint256 admin_fee);
    event NewAdmin(address indexed admin);
    event NewFee(uint256 fee, uint256 admin_fee);
    event RampA(uint256 old_A, uint256 new_A, uint256 initial_time, uint256 future_time);
    event RemoveLiquidity(address indexed provider, uint256[2] token_amounts, uint256[2] fees, uint256 token_supply);
    event RemoveLiquidityImbalance(
        address indexed provider, uint256[2] token_amounts, uint256[2] fees, uint256 invariant, uint256 token_supply
    );
    event RemoveLiquidityOne(address indexed provider, uint256 token_amount, uint256 coin_amount, uint256 token_supply);
    event StopRampA(uint256 A, uint256 t);
    event TokenExchange(
        address indexed buyer, int128 sold_id, uint256 tokens_sold, int128 bought_id, uint256 tokens_bought
    );
    event Transfer(address indexed sender, address indexed receiver, uint256 value);

    function A() external view returns (uint256);
    function A_precise() external view returns (uint256);
    function add_liquidity(uint256[2] memory _amounts, uint256 _min_mint_amount) external returns (uint256);
    function add_liquidity(uint256[2] memory _amounts, uint256 _min_mint_amount, address _receiver)
        external
        returns (uint256);
    function admin_actions_deadline() external view returns (uint256);
    function admin_balances(uint256 i) external view returns (uint256);
    function admin_fee() external view returns (uint256);
    function allowance(address arg0, address arg1) external view returns (uint256);
    function apply_new_fee() external;
    function apply_transfer_ownership() external;
    function approve(address _spender, uint256 _value) external returns (bool);
    function balanceOf(address arg0) external view returns (uint256);
    function balances(uint256 arg0) external view returns (uint256);
    function calc_token_amount(uint256[2] memory _amounts, bool _is_deposit) external view returns (uint256);
    function calc_withdraw_one_coin(uint256 _burn_amount, int128 i) external view returns (uint256);
    function coins(uint256 arg0) external view returns (address);
    function commit_new_fee(uint256 _new_fee, uint256 _new_admin_fee) external;
    function commit_transfer_ownership(address _owner) external;
    function decimals() external view returns (uint256);
    function donate_admin_fees() external;
    function exchange(int128 i, int128 j, uint256 _dx, uint256 _min_dy) external returns (uint256);
    function exchange(int128 i, int128 j, uint256 _dx, uint256 _min_dy, address _receiver) external returns (uint256);
    function fee() external view returns (uint256);
    function future_A() external view returns (uint256);
    function future_A_time() external view returns (uint256);
    function future_admin_fee() external view returns (uint256);
    function future_fee() external view returns (uint256);
    function future_owner() external view returns (address);
    function get_balances() external view returns (uint256[2] memory);
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);
    function get_virtual_price() external view returns (uint256);
    function initial_A() external view returns (uint256);
    function initial_A_time() external view returns (uint256);
    function kill_me() external;
    function name() external view returns (string memory);
    function owner() external view returns (address);
    function ramp_A(uint256 _future_A, uint256 _future_time) external;
    function remove_liquidity(uint256 _burn_amount, uint256[2] memory _min_amounts)
        external
        returns (uint256[2] memory);
    function remove_liquidity(uint256 _burn_amount, uint256[2] memory _min_amounts, address _receiver)
        external
        returns (uint256[2] memory);
    function remove_liquidity_imbalance(uint256[2] memory _amounts, uint256 _max_burn_amount)
        external
        returns (uint256);
    function remove_liquidity_imbalance(uint256[2] memory _amounts, uint256 _max_burn_amount, address _receiver)
        external
        returns (uint256);
    function remove_liquidity_one_coin(uint256 _burn_amount, int128 i, uint256 _min_received)
        external
        returns (uint256);
    function remove_liquidity_one_coin(uint256 _burn_amount, int128 i, uint256 _min_received, address _receiver)
        external
        returns (uint256);
    function revert_new_parameters() external;
    function revert_transfer_ownership() external;
    function stop_ramp_A() external;
    function symbol() external view returns (string memory);
    function totalSupply() external view returns (uint256);
    function transfer(address _to, uint256 _value) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
    function transfer_ownership_deadline() external view returns (uint256);
    function unkill_me() external;
    function withdraw_admin_fees() external;
}
