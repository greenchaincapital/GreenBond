// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/GreenBond.sol";

contract GreenBondTest is Test {
    using stdStorage for StdStorage;

    GreenBond public bond;
    address public gov;

    function setUp() public {
        bond = new GreenBond();
        gov = tx.origin;
    }

    function writeTokenBalance(address who, address token, uint256 amt) internal {
        stdstore.target(token).sig(ERC20(token).balanceOf.selector).with_key(who).checked_write(amt);
    }

    function testDeposit(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        assertGt(bond.balanceOf(address(this)), 0);
    }
}
