// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/GreenBond.sol";
import "../src/PPA.sol";

contract PPATest is Test {
    using stdStorage for StdStorage;

    GreenBond public bond;
    address public gov;
    PPA public ppa;

    function setUp() public {
        bond = new GreenBond();
        gov = tx.origin;
        ppa = new PPA(address(0x1), address(0x2), address(bond), 3650 days, 10, 4);
        vm.prank(gov);
        bond.registerPpaContract(address(ppa));
    }

    function writeTokenBalance(address who, address token, uint256 amt) internal {
        stdstore.target(token).sig(ERC20(token).balanceOf.selector).with_key(who).checked_write(amt);
    }

    function testActivatePPA() public {
        vm.prank(address(0x1));
        // Activate PPA
        ppa.activatePPA();
        // assertEq(ppa.state, 1);
    }

    function testPaySupplier() public {
        uint256 amount = 500000000 * 2;
        address token = bond.USDT();
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        vm.prank(gov);
        // Pay supplier
        bond.paySuppliers(address(ppa), token, 500000000);
        assertGt(ERC20(token).balanceOf(address(0x2)), 500000000 * 999 / 1000);
    }

    function testReceiveIncome() public {
        uint256 amount = 500000000 * 2;
        address token = bond.USDT();
        writeTokenBalance(address(this), token, amount);
        ERC20(token).approve(address(bond), amount);
        bond.deposit(token, amount);
        vm.prank(gov);
        // Pay supplier
        bond.paySuppliers(address(ppa), token, 500000000);
        writeTokenBalance(address(this), token, 500000000/4);
        ERC20(token).approve(address(ppa), 500000000/4);
        ppa.receiveIncome(token, 500000000/4);
    }
}
