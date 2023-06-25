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
        vm.warp(block.timestamp + bond.YEAR_IN_SECONDS());
        bond.withdraw(token, bond.balanceOf(address(this)));
        assertEq(bond.balanceOf(address(this)), 0);
        assertGt(ERC20(token).balanceOf(address(this)), 0);
    }

    function testWithdrawFail(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        uint256 shares = bond.deposit(token, amount);
        vm.warp(block.timestamp + bond.YEAR_IN_SECONDS());
        vm.prank(address(1));
        vm.expectRevert();
        bond.withdraw(token, shares);
    }

    function testDeployAssets(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        uint256 shares = bond.deposit(token, amount);
        vm.prank(gov);
        bond.deployAssets(token, gov, shares);
        assertGt(ERC20(token).balanceOf(gov), 0);
    }

    function testDeployAssetsFail(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        uint256 shares = bond.deposit(token, amount);
        vm.expectRevert();
        bond.deployAssets(token, gov, shares);
    }

    function testDepositAssets(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(gov, token, amount);
        vm.prank(gov);
        ERC20(token).approve(address(bond), amount);
        vm.prank(gov);
        bond.depositAssets(token, amount);
        assertEq(ERC20(token).balanceOf(gov), 0);
    }

    function testDepositAssetsFail(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(gov, token, amount);
        vm.prank(gov);
        ERC20(token).approve(address(bond), amount);
        vm.expectRevert();
        bond.depositAssets(token, amount);
    }

    function testRecoverToken(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).transfer(address(bond), amount);
        vm.prank(gov);
        bond.recoverToken(token, address(this), amount);
        assertEq(ERC20(token).balanceOf(address(this)), amount);
    }

    function testRecoverTokenFail(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).transfer(address(bond), amount);
        vm.expectRevert();
        bond.recoverToken(token, address(this), amount);
    }

    function testTransferToken(uint256 amount) public {
        vm.assume(amount > 2000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        uint256 shares = bond.deposit(token, amount);
        bond.transfer(address(1), shares);
        assertEq(bond.depositTimestamps(address(1)), block.timestamp);
    }
}
