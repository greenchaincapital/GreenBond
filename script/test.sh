#!/bin/bash

source .env

forge test --fork-url $RPC_ARBITRUM --etherscan-api-key $ARBISCAN_API -vvvv