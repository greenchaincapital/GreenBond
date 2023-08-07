// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IGreenBond {
    function receiveIncome(address token, uint256 tokenAmount) external;
}