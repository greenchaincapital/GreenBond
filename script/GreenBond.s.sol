// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "../src/GreenBond.sol";

contract GreenBondScript is Script {
    function setUp() public { }

    function run() public {
        vm.startBroadcast();
        new GreenBond();
        vm.stopBroadcast();
    }
}
