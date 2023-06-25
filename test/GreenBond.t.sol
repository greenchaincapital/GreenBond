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

    function testDepositUSDT(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        assertGt(bond.balanceOf(address(this)), 0);
    }

    function testDepositUSDC(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDC();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        assertGt(bond.balanceOf(address(this)), 0);
    }

    function testDepositFail(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        vm.expectRevert();
        bond.deposit(token, amount);
    }

    function testClaim(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        assertGt(bond.balanceOf(address(this)), 0);
        vm.warp(block.timestamp + bond.YEAR_IN_SECONDS());
        bond.claimRewards(token);
        assertGt(ERC20(token).balanceOf(address(this)), 0);
    }

    function testClaimFail(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        assertGt(bond.balanceOf(address(this)), 0);
        vm.expectRevert();
        bond.claimRewards(token);
    }

    function testWithdraw(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        assertGt(bond.balanceOf(address(this)), 0);
        vm.warp(block.timestamp + bond.YEAR_IN_SECONDS());
        bond.withdraw(token, bond.balanceOf(address(this)));
        assertEq(bond.balanceOf(address(this)), 0);
        assertGt(ERC20(token).balanceOf(address(this)), 0);
    }
}
