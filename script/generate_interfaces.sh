#!/usr/bin/env bash
# To load the variables in the .env file
source .env

cast interface --chain arbitrum --etherscan-api-key $ARBISCAN_API -o IPOOL.sol 0x7f90122BF0700F9E7e1F688fe926940E8839F353

cast interface --chain arbitrum --etherscan-api-key $ARBISCAN_API -o IGAUGE.sol 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f