#!/usr/bin/env bash
# To load the variables in the .env file
source .env

# To deploy and verify our contract
forge script script/Deploy.s.sol:DeployScript --rpc-url $RPC_ARBITRUM  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ARBISCAN_API -vvvv