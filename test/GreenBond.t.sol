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

    function testRegisterProject() public {
        vm.prank(gov);
        uint256 id = bond.registerProject(address(this), "Test project");
        (,,address admin,,,string memory projectName,) = bond.projects(id);
        assertEq(admin, address(this));
        assertEq(projectName, "Test project");
    }

    function testLinkAgreement() public {
        vm.prank(gov);
        uint256 id = bond.registerProject(address(this), "Test project");
        vm.prank(gov);
        bond.linkProjectAgreement(id, "https://signed-agreement.com");
        (,,,,,,string memory agreement) = bond.projects(id);
        assertEq(agreement, "https://signed-agreement.com");
    }

    function testPayProject(uint256 amount) public {
        vm.assume(amount>4000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        vm.prank(gov);
        uint256 id = bond.registerProject(address(this), "Test project");
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        vm.prank(gov);
        bond.payProject(token, amount, id);
        (bool isActive,,,uint128 totalSupplied,,,) = bond.projects(id);
        assertEq(isActive, true);
        assertGt(totalSupplied, 0);
        assertGe(ERC20(token).balanceOf(address(this)), amount * 99/100);
    }

    function testReceiveIncome(uint256 amount) public {
        vm.assume(amount>4000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        vm.prank(gov);
        uint256 id = bond.registerProject(address(this), "Test project");
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        vm.prank(gov);
        bond.payProject(token, amount, id);
        uint256 amount2 = ERC20(token).balanceOf(address(this));
        ERC20(token).approve(address(bond), amount2);
        bond.receiveIncome(token, amount2, id);
        (,,,,uint128 totalRePaid,,) = bond.projects(id);
        assertGt(totalRePaid, 0);
    }

    function testCompleteProject(uint256 amount) public {
        vm.assume(amount>4000);
        address token = bond.USDT();
        vm.assume(amount < ERC20(token).totalSupply());
        vm.prank(gov);
        uint256 id = bond.registerProject(address(this), "Test project");
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount/2);
        bond.deposit(token, amount/2);
        vm.prank(gov);
        bond.payProject(token, amount/2, id);
        uint256 amount2 = ERC20(token).balanceOf(address(this));
        ERC20(token).approve(address(bond), amount2);
        bond.receiveIncome(token, amount2, id);
        vm.prank(gov);
        bond.completeProject(id);
        (,bool isCompleted,,,,,) = bond.projects(id);
        assertEq(isCompleted, true);
    }

}
