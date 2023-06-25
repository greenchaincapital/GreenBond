## GreenBond test results

```rust
Running 6 tests for test/GreenBond.t.sol:GreenBondTest
[PASS] testClaim(uint256) (runs: 256, μ: 1035784, ~: 1034808)
Traces:
  [1041291] GreenBondTest::testClaim(6139828922713 [6.139e12])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [261] GreenBond::USDT() [staticcall]
    │   └─ ← TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9]
    ├─ [9655] TransparentUpgradeableProxy::totalSupply() [staticcall]
    │   ├─ [2327] ArbitrumExtension::totalSupply() [delegatecall]
    │   │   └─ ← 438395892144122 [4.383e14]
    │   └─ ← 438395892144122 [4.383e14]
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [0] VM::record()
    │   └─ ← ()
    ├─ [3433] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [2602] ArbitrumExtension::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::accesses(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9])
    │   └─ ← [0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca], []
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103) [staticcall]
    │   └─ ← 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] ArbitrumExtension::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a)
    │   └─ ← ()
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc) [staticcall]
    │   └─ ← 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [3328] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [0] 0x0000000000000000000000000000000000000000::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← ()
    │   └─ ← ()
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50)
    │   └─ ← ()
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ emit WARNING_UninitedSlot(who: TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] ArbitrumExtension::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    ├─ emit SlotFound(who: TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], fsig: 0x70a08231, keysHash: 0x5ff10565516c110180bb9cc111cdbc2b0a68e09ff7fac17290373c3aa4a1bb03, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] ArbitrumExtension::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x000000000000000000000000000000000000000000000000000005958a526959)
    │   └─ ← ()
    ├─ [25452] TransparentUpgradeableProxy::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 6139828922713 [6.139e12])
    │   ├─ [24618] ArbitrumExtension::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 6139828922713 [6.139e12]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 6139828922713 [6.139e12])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [460205] GreenBond::deposit(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 6139828922713 [6.139e12])
    │   ├─ [3844] TransparentUpgradeableProxy::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [3010] ArbitrumExtension::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 6139828922713 [6.139e12]
    │   │   └─ ← 6139828922713 [6.139e12]
    │   ├─ [26524] TransparentUpgradeableProxy::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 6139828922713 [6.139e12])
    │   │   ├─ [25852] ArbitrumExtension::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 6139828922713 [6.139e12]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 6139828922713 [6.139e12])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [21948] Vyper_contract::calc_token_amount([0, 6139828922713 [6.139e12]], true) [staticcall]
    │   │   └─ ← 6060345649964159395408619 [6.06e24]
    │   ├─ [25452] TransparentUpgradeableProxy::approve(Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 6139828922713 [6.139e12])
    │   │   ├─ [24618] ArbitrumExtension::approve(Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 6139828922713 [6.139e12]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], amount: 6139828922713 [6.139e12])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [82964] Vyper_contract::add_liquidity([0, 6139828922713 [6.139e12]], 5939138736964876207500446 [5.939e24])
    │   │   ├─ [12844] TransparentUpgradeableProxy::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 6139828922713 [6.139e12])
    │   │   │   ├─ [12172] ArbitrumExtension::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 6139828922713 [6.139e12]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], amount: 6139828922713 [6.139e12])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 6059958864330223289700963 [6.059e24])
    │   │   ├─ emit AddLiquidity(provider: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], token_amounts: [0, 6139828922713 [6.139e12]], fees: [195950887 [1.959e8], 195928122 [1.959e8]], invariant: 23112161404041967642788336 [2.311e25], token_supply: 22811355916355099870933254 [2.281e25])
    │   │   └─ ← 6059958864330223289700963 [6.059e24]
    │   ├─ [24264] Vyper_contract::approve(Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], 6059958864330223289700963 [6.059e24])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], amount: 6059958864330223289700963 [6.059e24])
    │   │   └─ ← true
    │   ├─ [226172] Vyper_contract::deposit(6059958864330223289700963 [6.059e24])
    │   │   ├─ [224037] Vyper_contract::deposit(6059958864330223289700963 [6.059e24]) [delegatecall]
    │   │   │   ├─ [12602] ClonableBeaconProxy::balanceOf(Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f]) [staticcall]
    │   │   │   │   ├─ [2337] UpgradeableBeacon::implementation() [staticcall]
    │   │   │   │   │   └─ ← StandardArbERC20: [0x3f770Ac673856F105b586bb393d122721265aD46]
    │   │   │   │   ├─ [2465] StandardArbERC20::balanceOf(Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f]) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [43133] Vyper_contract::totalSupply() [staticcall]
    │   │   │   │   ├─ [40181] VotingEscrowStateOracle::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [17020] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [2645] VotingEscrowStateOracle::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(_user: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], _original_balance: 6059958864330223289700963 [6.059e24], _original_supply: 20638325612244951810909570 [2.063e25], _working_balance: 2423983545732089315880385 [2.423e24], _working_supply: 11996618793080136158613877 [1.199e25])
    │   │   │   ├─ [6544] Vyper_contract::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], 6059958864330223289700963 [6.059e24])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], amount: 6059958864330223289700963 [6.059e24])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 6059958864330223289700963 [6.059e24])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 6059958864330223289700963 [6.059e24])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 6059958864330223289700963 [6.059e24])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], amount: 6139828922713 [6.139e12], shares: 6059958864330223289700963 [6.059e24])
    │   └─ ← 6059958864330223289700963 [6.059e24]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 6059958864330223289700963 [6.059e24]
    ├─ [273] GreenBond::YEAR_IN_SECONDS() [staticcall]
    │   └─ ← 31536000 [3.153e7]
    ├─ [0] VM::warp(1719217740 [1.719e9])
    │   └─ ← ()
    ├─ [375300] GreenBond::claimRewards(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9])
    │   ├─ [1325] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [1153] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 6059958864330223289700963 [6.059e24]
    │   │   └─ ← 6059958864330223289700963 [6.059e24]
    │   ├─ [1325] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [1153] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 6059958864330223289700963 [6.059e24]
    │   │   └─ ← 6059958864330223289700963 [6.059e24]
    │   ├─ [259413] Vyper_contract::withdraw(605995886433022328970096 [6.059e23], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], true)
    │   │   ├─ [259232] Vyper_contract::withdraw(605995886433022328970096 [6.059e23], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], true) [delegatecall]
    │   │   │   ├─ [1602] ClonableBeaconProxy::balanceOf(Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f]) [staticcall]
    │   │   │   │   ├─ [337] UpgradeableBeacon::implementation() [staticcall]
    │   │   │   │   │   └─ ← StandardArbERC20: [0x3f770Ac673856F105b586bb393d122721265aD46]
    │   │   │   │   ├─ [465] StandardArbERC20::balanceOf(Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f]) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [14633] Vyper_contract::totalSupply() [staticcall]
    │   │   │   │   ├─ [14181] VotingEscrowStateOracle::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [3020] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [645] VotingEscrowStateOracle::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(_user: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], _original_balance: 5453962977897200960730867 [5.453e24], _original_supply: 20032329725811929481939474 [2.003e25], _working_balance: 2181585191158880384292346 [2.181e24], _working_supply: 11754220438506927227025838 [1.175e25])
    │   │   │   ├─ [22667] Vyper_contract::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 605995886433022328970096 [6.059e23])
    │   │   │   │   ├─ emit Transfer(from: Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 605995886433022328970096 [6.059e23])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Withdraw(_user: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], _value: 605995886433022328970096 [6.059e23])
    │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x0000000000000000000000000000000000000000, amount: 605995886433022328970096 [6.059e23])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ [22105] Vyper_contract::calc_withdraw_one_coin(605995886433022328970096 [6.059e23], 1) [staticcall]
    │   │   └─ ← 613967971663 [6.139e11]
    │   ├─ [57628] Vyper_contract::remove_liquidity_one_coin(605995886433022328970096 [6.059e23], 1, 601688612229 [6.016e11])
    │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x0000000000000000000000000000000000000000, amount: 605995886433022328970096 [6.059e23])
    │   │   ├─ [24134] TransparentUpgradeableProxy::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 613967971663 [6.139e11])
    │   │   │   ├─ [23300] ArbitrumExtension::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 613967971663 [6.139e11]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 613967971663 [6.139e11])
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit RemoveLiquidityOne(provider: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], token_amount: 605995886433022328970096 [6.059e23], coin_amount: 613967971663 [6.139e11], token_supply: 22205360029922077541963158 [2.22e25])
    │   │   └─ ← 613967971663 [6.139e11]
    │   ├─ [19308] TransparentUpgradeableProxy::transfer(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], 613967971663 [6.139e11])
    │   │   ├─ [18640] ArbitrumExtension::transfer(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], 613967971663 [6.139e11]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 613967971663 [6.139e11])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ emit RewardsClaimed(sender: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], tokenAmount: 613967971663 [6.139e11], shares: 605995886433022328970096 [6.059e23])
    │   └─ ← 613967971663 [6.139e11]
    ├─ [1433] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] ArbitrumExtension::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 613967971663 [6.139e11]
    │   └─ ← 613967971663 [6.139e11]
    └─ ← ()

[PASS] testClaimFail(uint256) (runs: 256, μ: 673937, ~: 672980)
Traces:
  [679463] GreenBondTest::testClaimFail(42067301 [4.206e7])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [261] GreenBond::USDT() [staticcall]
    │   └─ ← 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9
    ├─ [9655] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::totalSupply() [staticcall]
    │   ├─ [2327] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::totalSupply() [delegatecall]
    │   │   └─ ← 438395892144122 [4.383e14]
    │   └─ ← 438395892144122 [4.383e14]
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [0] VM::record()
    │   └─ ← ()
    ├─ [3433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [2602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::accesses(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9)
    │   └─ ← [0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca], []
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103) [staticcall]
    │   └─ ← 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc) [staticcall]
    │   └─ ← 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [3328] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [0] 0x0000000000000000000000000000000000000000::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← ()
    │   └─ ← ()
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ emit WARNING_UninitedSlot(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    ├─ emit SlotFound(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, fsig: 0x70a08231, keysHash: 0x5ff10565516c110180bb9cc111cdbc2b0a68e09ff7fac17290373c3aa4a1bb03, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x000000000000000000000000000000000000000000000000000000000281e565)
    │   └─ ← ()
    ├─ [25452] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 42067301 [4.206e7])
    │   ├─ [24618] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 42067301 [4.206e7]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 42067301 [4.206e7])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [460205] GreenBond::deposit(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 42067301 [4.206e7])
    │   ├─ [3844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [3010] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 42067301 [4.206e7]
    │   │   └─ ← 42067301 [4.206e7]
    │   ├─ [26524] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 42067301 [4.206e7])
    │   │   ├─ [25852] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 42067301 [4.206e7]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 42067301 [4.206e7])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [21948] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::calc_token_amount([0, 42067301 [4.206e7]], true) [staticcall]
    │   │   └─ ← 0x0000000000000000000000000000000000000000000000024051e3befeafd7a0
    │   ├─ [25452] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 42067301 [4.206e7])
    │   │   ├─ [24618] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 42067301 [4.206e7]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 42067301 [4.206e7])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [82964] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::add_liquidity([0, 42067301 [4.206e7]], 40697659567447956877 [4.069e19])
    │   │   ├─ [12844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 42067301 [4.206e7])
    │   │   │   ├─ [12172] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 42067301 [4.206e7]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 42067301 [4.206e7])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 41525574871988893802 [4.152e19])
    │   │   ├─ emit AddLiquidity(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: [0, 42067301 [4.206e7]], param2: [1342, 1342], param3: 16972046251549679667351045 [1.697e25], param4: 16751438577599748570126093 [1.675e25])
    │   │   └─ ← 0x00000000000000000000000000000000000000000000000240487a558ac8f86a
    │   ├─ [24264] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::approve(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 41525574871988893802 [4.152e19])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 41525574871988893802 [4.152e19])
    │   │   └─ ← true
    │   ├─ [226172] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::deposit(41525574871988893802 [4.152e19])
    │   │   ├─ [224037] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::deposit(41525574871988893802 [4.152e19]) [delegatecall]
    │   │   │   ├─ [12602] 0x11cDb42B0EB46D95f990BeDD4695A6e3fA034978::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [staticcall]
    │   │   │   │   ├─ [2337] 0xE72ba9418b5f2Ce0A6a40501Fe77c6839Aa37333::implementation() [staticcall]
    │   │   │   │   │   └─ ← 0x0000000000000000000000003f770ac673856f105b586bb393d122721265ad46
    │   │   │   │   ├─ [2465] 0x3f770Ac673856F105b586bb393d122721265aD46::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [43133] 0x98c80fa823759B642C3E02f40533C164f40727ae::totalSupply() [staticcall]
    │   │   │   │   ├─ [40181] 0x12F407340697Ae0b177546E535b91A5be021fBF9::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [17020] 0x98c80fa823759B642C3E02f40533C164f40727ae::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [2645] 0x12F407340697Ae0b177546E535b91A5be021fBF9::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 41525574871988893802 [4.152e19], param2: 14578408273489600510102409 [1.457e25], param3: 16610229948795557520 [1.661e19], param4: 9572651857577995638291012 [9.572e24])
    │   │   │   ├─ [6544] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 41525574871988893802 [4.152e19])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 41525574871988893802 [4.152e19])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 41525574871988893802 [4.152e19])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 41525574871988893802 [4.152e19])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 41525574871988893802 [4.152e19])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, amount: 42067301 [4.206e7], shares: 41525574871988893802 [4.152e19])
    │   └─ ← 41525574871988893802 [4.152e19]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 41525574871988893802 [4.152e19]
    ├─ [0] VM::expectRevert()
    │   └─ ← ()
    ├─ [5361] GreenBond::claimRewards(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9)
    │   └─ ← "NoRewardsToClaim()"
    └─ ← ()

[PASS] testDepositFail(uint256) (runs: 256, μ: 193995, ~: 193997)
Traces:
  [198240] GreenBondTest::testDepositFail(1376030478 [1.376e9])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [261] GreenBond::USDT() [staticcall]
    │   └─ ← 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9
    ├─ [9655] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::totalSupply() [staticcall]
    │   ├─ [2327] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::totalSupply() [delegatecall]
    │   │   └─ ← 438395892144122 [4.383e14]
    │   └─ ← 438395892144122 [4.383e14]
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [0] VM::record()
    │   └─ ← ()
    ├─ [3433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [2602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::accesses(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9)
    │   └─ ← [0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca], []
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103) [staticcall]
    │   └─ ← 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc) [staticcall]
    │   └─ ← 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [3328] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [0] 0x0000000000000000000000000000000000000000::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← ()
    │   └─ ← ()
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ emit WARNING_UninitedSlot(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    ├─ emit SlotFound(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, fsig: 0x70a08231, keysHash: 0x5ff10565516c110180bb9cc111cdbc2b0a68e09ff7fac17290373c3aa4a1bb03, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000052048f0e)
    │   └─ ← ()
    ├─ [0] VM::expectRevert()
    │   └─ ← ()
    ├─ [6711] GreenBond::deposit(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 1376030478 [1.376e9])
    │   ├─ [5844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [5010] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 0
    │   │   └─ ← 0
    │   └─ ← "InsufficientAllowance()"
    └─ ← ()

[PASS] testDepositUSDC(uint256) (runs: 256, μ: 668166, ~: 666932)
Traces:
  [676008] GreenBondTest::testDepositUSDC(213800196640929 [2.138e14])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [284] GreenBond::USDC() [staticcall]
    │   └─ ← TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8]
    ├─ [9651] TransparentUpgradeableProxy::totalSupply() [staticcall]
    │   ├─ [2411] ArbFiatToken::totalSupply() [delegatecall]
    │   │   └─ ← 1070649219910383 [1.07e15]
    │   └─ ← 1070649219910383 [1.07e15]
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [0] VM::record()
    │   └─ ← ()
    ├─ [3296] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [2553] ArbFiatToken::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::accesses(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8])
    │   └─ ← [0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca], []
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103) [staticcall]
    │   └─ ← 0x000000000000000000000000d570ace65c43af47101fc6250fd6fc63d1c22a86
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1296] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [553] ArbFiatToken::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x000000000000000000000000d570ace65c43af47101fc6250fd6fc63d1c22a86)
    │   └─ ← ()
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc) [staticcall]
    │   └─ ← 0x0000000000000000000000001efb3f88bc88f03fd1804a5c53b7141bbef5ded8
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [3240] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [0] 0x0000000000000000000000000000000000000000::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← ()
    │   └─ ← ()
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x0000000000000000000000001efb3f88bc88f03fd1804a5c53b7141bbef5ded8)
    │   └─ ← ()
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ emit WARNING_UninitedSlot(who: TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1296] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [553] ArbFiatToken::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    ├─ emit SlotFound(who: TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], fsig: 0x70a08231, keysHash: 0x5ff10565516c110180bb9cc111cdbc2b0a68e09ff7fac17290373c3aa4a1bb03, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1296] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [553] ArbFiatToken::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::load(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000c2733cc610a1)
    │   └─ ← ()
    ├─ [31939] TransparentUpgradeableProxy::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 213800196640929 [2.138e14])
    │   ├─ [31193] ArbFiatToken::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 213800196640929 [2.138e14]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 213800196640929 [2.138e14])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [457035] GreenBond::deposit(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 213800196640929 [2.138e14])
    │   ├─ [1384] TransparentUpgradeableProxy::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [638] ArbFiatToken::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 213800196640929 [2.138e14]
    │   │   └─ ← 213800196640929 [2.138e14]
    │   ├─ [23651] TransparentUpgradeableProxy::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 213800196640929 [2.138e14])
    │   │   ├─ [23049] ArbFiatToken::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 213800196640929 [2.138e14]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 213800196640929 [2.138e14])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [23028] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::calc_token_amount([213800196640929 [2.138e14], 0], true) [staticcall]
    │   │   └─ ← 0x000000000000000000000000000000000000000000ae25eb82e8cf7c3d1589ba
    │   ├─ [27939] TransparentUpgradeableProxy::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 213800196640929 [2.138e14])
    │   │   ├─ [27193] ArbFiatToken::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 213800196640929 [2.138e14]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 213800196640929 [2.138e14])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [81820] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::add_liquidity([213800196640929 [2.138e14], 0], 206321521298872796510598413 [2.063e26])
    │   │   ├─ [9971] TransparentUpgradeableProxy::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 213800196640929 [2.138e14])
    │   │   │   ├─ [9369] ArbFiatToken::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 213800196640929 [2.138e14]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 213800196640929 [2.138e14])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 210524226540792473751473627 [2.105e26])
    │   │   ├─ emit AddLiquidity(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: [213800196640929 [2.138e14], 0], param2: [3882813191 [3.882e9], 3858262095 [3.858e9]], param3: 230276767093021749800300492 [2.302e26], param4: 227275623592817350332705918 [2.272e26])
    │   │   └─ ← 0x000000000000000000000000000000000000000000ae243d30565e6f46f14ddb
    │   ├─ [24264] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::approve(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 210524226540792473751473627 [2.105e26])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 210524226540792473751473627 [2.105e26])
    │   │   └─ ← true
    │   ├─ [226172] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::deposit(210524226540792473751473627 [2.105e26])
    │   │   ├─ [224037] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::deposit(210524226540792473751473627 [2.105e26]) [delegatecall]
    │   │   │   ├─ [12602] 0x11cDb42B0EB46D95f990BeDD4695A6e3fA034978::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [staticcall]
    │   │   │   │   ├─ [2337] 0xE72ba9418b5f2Ce0A6a40501Fe77c6839Aa37333::implementation() [staticcall]
    │   │   │   │   │   └─ ← 0x3f770Ac673856F105b586bb393d122721265aD46
    │   │   │   │   ├─ [2465] 0x3f770Ac673856F105b586bb393d122721265aD46::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [43133] 0x98c80fa823759B642C3E02f40533C164f40727ae::totalSupply() [staticcall]
    │   │   │   │   ├─ [40181] 0x12F407340697Ae0b177546E535b91A5be021fBF9::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [17020] 0x98c80fa823759B642C3E02f40533C164f40727ae::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [2645] 0x12F407340697Ae0b177546E535b91A5be021fBF9::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 210524226540792473751473627 [2.105e26], param2: 225102593288707202272682234 [2.251e26], param3: 84209690616316989500589450 [8.42e25], param4: 93782325863665036343322942 [9.378e25])
    │   │   │   ├─ [6544] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 210524226540792473751473627 [2.105e26])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 210524226540792473751473627 [2.105e26])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 210524226540792473751473627 [2.105e26])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 210524226540792473751473627 [2.105e26])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 210524226540792473751473627 [2.105e26])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], amount: 213800196640929 [2.138e14], shares: 210524226540792473751473627 [2.105e26])
    │   └─ ← 210524226540792473751473627 [2.105e26]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 210524226540792473751473627 [2.105e26]
    └─ ← ()

[PASS] testDepositUSDT(uint256) (runs: 256, μ: 668959, ~: 668000)
Traces:
  [674483] GreenBondTest::testDepositUSDT(19511824257836 [1.951e13])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [261] GreenBond::USDT() [staticcall]
    │   └─ ← 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9
    ├─ [9655] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::totalSupply() [staticcall]
    │   ├─ [2327] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::totalSupply() [delegatecall]
    │   │   └─ ← 438395892144122 [4.383e14]
    │   └─ ← 438395892144122 [4.383e14]
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [0] VM::record()
    │   └─ ← ()
    ├─ [3433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [2602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::accesses(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9)
    │   └─ ← [0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca], []
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103) [staticcall]
    │   └─ ← 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc) [staticcall]
    │   └─ ← 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [3328] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [0] 0x0000000000000000000000000000000000000000::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← ()
    │   └─ ← ()
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ emit WARNING_UninitedSlot(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    ├─ emit SlotFound(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, fsig: 0x70a08231, keysHash: 0x5ff10565516c110180bb9cc111cdbc2b0a68e09ff7fac17290373c3aa4a1bb03, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x000000000000000000000000000000000000000000000000000011bef35a932c)
    │   └─ ← ()
    ├─ [25452] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 19511824257836 [1.951e13])
    │   ├─ [24618] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 19511824257836 [1.951e13]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 19511824257836 [1.951e13])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [460205] GreenBond::deposit(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 19511824257836 [1.951e13])
    │   ├─ [3844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [3010] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 19511824257836 [1.951e13]
    │   │   └─ ← 19511824257836 [1.951e13]
    │   ├─ [26524] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 19511824257836 [1.951e13])
    │   │   ├─ [25852] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 19511824257836 [1.951e13]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 19511824257836 [1.951e13])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [21948] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::calc_token_amount([0, 19511824257836 [1.951e13]], true) [staticcall]
    │   │   └─ ← 0x0000000000000000000000000000000000000000000fedc7bdf50c083b431002
    │   ├─ [25452] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 19511824257836 [1.951e13])
    │   │   ├─ [24618] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 19511824257836 [1.951e13]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 19511824257836 [1.951e13])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [82964] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::add_liquidity([0, 19511824257836 [1.951e13]], 18871637285778282019162769 [1.887e25])
    │   │   ├─ [12844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 19511824257836 [1.951e13])
    │   │   │   ├─ [12172] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 19511824257836 [1.951e13]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 19511824257836 [1.951e13])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 19255543521245765698127440 [1.925e25])
    │   │   ├─ emit AddLiquidity(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: [0, 19511824257836 [1.951e13]], param2: [622634735 [6.226e8], 622687054 [6.226e8]], param3: 36482378526849708141220799 [3.648e25], param4: 36006940573270642279359731 [3.6e25])
    │   │   └─ ← 0x0000000000000000000000000000000000000000000fed851b1cab0ee2990650
    │   ├─ [24264] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::approve(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 19255543521245765698127440 [1.925e25])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 19255543521245765698127440 [1.925e25])
    │   │   └─ ← true
    │   ├─ [226172] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::deposit(19255543521245765698127440 [1.925e25])
    │   │   ├─ [224037] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::deposit(19255543521245765698127440 [1.925e25]) [delegatecall]
    │   │   │   ├─ [12602] 0x11cDb42B0EB46D95f990BeDD4695A6e3fA034978::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [staticcall]
    │   │   │   │   ├─ [2337] 0xE72ba9418b5f2Ce0A6a40501Fe77c6839Aa37333::implementation() [staticcall]
    │   │   │   │   │   └─ ← 0x0000000000000000000000003f770ac673856f105b586bb393d122721265ad46
    │   │   │   │   ├─ [2465] 0x3f770Ac673856F105b586bb393d122721265aD46::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [43133] 0x98c80fa823759B642C3E02f40533C164f40727ae::totalSupply() [staticcall]
    │   │   │   │   ├─ [40181] 0x12F407340697Ae0b177546E535b91A5be021fBF9::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [17020] 0x98c80fa823759B642C3E02f40533C164f40727ae::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [2645] 0x12F407340697Ae0b177546E535b91A5be021fBF9::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 19255543521245765698127440 [1.925e25], param2: 33833910269160494219336047 [3.383e25], param3: 7702217408498306279250976 [7.702e24], param4: 17274852655846353121984468 [1.727e25])
    │   │   │   ├─ [6544] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 19255543521245765698127440 [1.925e25])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 19255543521245765698127440 [1.925e25])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 19255543521245765698127440 [1.925e25])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 19255543521245765698127440 [1.925e25])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 19255543521245765698127440 [1.925e25])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, amount: 19511824257836 [1.951e13], shares: 19255543521245765698127440 [1.925e25])
    │   └─ ← 19255543521245765698127440 [1.925e25]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 19255543521245765698127440 [1.925e25]
    └─ ← ()

[PASS] testWithdraw(uint256) (runs: 256, μ: 1043063, ~: 1042169)
Traces:
  [1048652] GreenBondTest::testWithdraw(452857328472 [4.528e11])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [261] GreenBond::USDT() [staticcall]
    │   └─ ← 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9
    ├─ [9655] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::totalSupply() [staticcall]
    │   ├─ [2327] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::totalSupply() [delegatecall]
    │   │   └─ ← 438395892144122 [4.383e14]
    │   └─ ← 438395892144122 [4.383e14]
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [0] VM::record()
    │   └─ ← ()
    ├─ [3433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [2602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::accesses(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9)
    │   └─ ← [0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca], []
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103) [staticcall]
    │   └─ ← 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103, 0x000000000000000000000000553ec478a66be27ba25a6bc5db20aec2ed6a1b4a)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc) [staticcall]
    │   └─ ← 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [3328] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [0] 0x0000000000000000000000000000000000000000::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← ()
    │   └─ ← ()
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc, 0x000000000000000000000000f31e1ae27e7cd057c1d6795a5a083e0453d39b50)
    │   └─ ← ()
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ emit WARNING_UninitedSlot(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x1337000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    │   └─ ← 8691120711644872517220240406154416179355393288731169655000180904158396678144 [8.691e75]
    ├─ emit SlotFound(who: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, fsig: 0x70a08231, keysHash: 0x5ff10565516c110180bb9cc111cdbc2b0a68e09ff7fac17290373c3aa4a1bb03, slot: 112334967102072145237668004630498691823684483837403119599101083244312048942538 [1.123e77])
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000000000)
    │   └─ ← ()
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 0
    │   └─ ← 0
    ├─ [0] VM::load(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca) [staticcall]
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000000
    ├─ [0] VM::store(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000006970667358)
    │   └─ ← ()
    ├─ [25452] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 452857328472 [4.528e11])
    │   ├─ [24618] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 452857328472 [4.528e11]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 452857328472 [4.528e11])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [460205] GreenBond::deposit(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 452857328472 [4.528e11])
    │   ├─ [3844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [3010] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 452857328472 [4.528e11]
    │   │   └─ ← 452857328472 [4.528e11]
    │   ├─ [26524] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 452857328472 [4.528e11])
    │   │   ├─ [25852] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 452857328472 [4.528e11]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 452857328472 [4.528e11])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [21948] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::calc_token_amount([0, 452857328472 [4.528e11]], true) [staticcall]
    │   │   └─ ← 0x000000000000000000000000000000000000000000005eaa7752e17542502ced
    │   ├─ [25452] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 452857328472 [4.528e11])
    │   │   ├─ [24618] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 452857328472 [4.528e11]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 452857328472 [4.528e11])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [82964] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::add_liquidity([0, 452857328472 [4.528e11]], 438106054183513425183505 [4.381e23])
    │   │   ├─ [12844] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 452857328472 [4.528e11])
    │   │   │   ├─ [12172] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 452857328472 [4.528e11]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 452857328472 [4.528e11])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 447018464596897451329361 [4.47e23])
    │   │   ├─ emit AddLiquidity(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: [0, 452857328472 [4.528e11]], param2: [14454498 [1.445e7], 14450177 [1.445e7]], param3: 17424938545223491013013975 [1.742e25], param4: 17198415516621774032561652 [1.719e25])
    │   │   └─ ← 0x000000000000000000000000000000000000000000005ea8eb65d98c2abdc751
    │   ├─ [24264] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::approve(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 447018464596897451329361 [4.47e23])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 447018464596897451329361 [4.47e23])
    │   │   └─ ← true
    │   ├─ [226172] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::deposit(447018464596897451329361 [4.47e23])
    │   │   ├─ [224037] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::deposit(447018464596897451329361 [4.47e23]) [delegatecall]
    │   │   │   ├─ [12602] 0x11cDb42B0EB46D95f990BeDD4695A6e3fA034978::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [staticcall]
    │   │   │   │   ├─ [2337] 0xE72ba9418b5f2Ce0A6a40501Fe77c6839Aa37333::implementation() [staticcall]
    │   │   │   │   │   └─ ← 0x0000000000000000000000003f770ac673856f105b586bb393d122721265ad46
    │   │   │   │   ├─ [2465] 0x3f770Ac673856F105b586bb393d122721265aD46::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [43133] 0x98c80fa823759B642C3E02f40533C164f40727ae::totalSupply() [staticcall]
    │   │   │   │   ├─ [40181] 0x12F407340697Ae0b177546E535b91A5be021fBF9::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [17020] 0x98c80fa823759B642C3E02f40533C164f40727ae::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [2645] 0x12F407340697Ae0b177546E535b91A5be021fBF9::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 447018464596897451329361 [4.47e23], param2: 15025385212511625972537968 [1.502e25], param3: 178807385838758980531744 [1.788e23], param4: 9751442633186805823265236 [9.751e24])
    │   │   │   ├─ [6544] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 447018464596897451329361 [4.47e23])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 447018464596897451329361 [4.47e23])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 447018464596897451329361 [4.47e23])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 447018464596897451329361 [4.47e23])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 447018464596897451329361 [4.47e23])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, amount: 452857328472 [4.528e11], shares: 447018464596897451329361 [4.47e23])
    │   └─ ← 447018464596897451329361 [4.47e23]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 447018464596897451329361 [4.47e23]
    ├─ [273] GreenBond::YEAR_IN_SECONDS() [staticcall]
    │   └─ ← 31536000 [3.153e7]
    ├─ [0] VM::warp(1719217740 [1.719e9])
    │   └─ ← ()
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 447018464596897451329361 [4.47e23]
    ├─ [369672] GreenBond::withdraw(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, 447018464596897451329361 [4.47e23])
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 44701846459689745132936 [4.47e22])
    │   ├─ emit RewardsCompounded(sender: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], shares: 44701846459689745132936 [4.47e22])
    │   ├─ [1325] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [1153] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 447018464596897451329361 [4.47e23]
    │   │   └─ ← 447018464596897451329361 [4.47e23]
    │   ├─ [1325] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [1153] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 447018464596897451329361 [4.47e23]
    │   │   └─ ← 447018464596897451329361 [4.47e23]
    │   ├─ [223459] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::withdraw(447018464596897451329361 [4.47e23], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], true)
    │   │   ├─ [223314] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::withdraw(447018464596897451329361 [4.47e23], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], true) [delegatecall]
    │   │   │   ├─ [1602] 0x11cDb42B0EB46D95f990BeDD4695A6e3fA034978::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [staticcall]
    │   │   │   │   ├─ [337] 0xE72ba9418b5f2Ce0A6a40501Fe77c6839Aa37333::implementation() [staticcall]
    │   │   │   │   │   └─ ← 0x0000000000000000000000003f770ac673856f105b586bb393d122721265ad46
    │   │   │   │   ├─ [465] 0x3f770Ac673856F105b586bb393d122721265aD46::balanceOf(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f) [delegatecall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ [14633] 0x98c80fa823759B642C3E02f40533C164f40727ae::totalSupply() [staticcall]
    │   │   │   │   ├─ [14181] 0x12F407340697Ae0b177546E535b91A5be021fBF9::totalSupply() [staticcall]
    │   │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   │   └─ ← 537933763557445815507427200 [5.379e26]
    │   │   │   ├─ [3020] 0x98c80fa823759B642C3E02f40533C164f40727ae::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   ├─ [645] 0x12F407340697Ae0b177546E535b91A5be021fBF9::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   │   │   │   └─ ← 0
    │   │   │   │   └─ ← 0
    │   │   │   ├─ emit UpdateLiquidityLimit(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 0, param2: 14578366747914728521208607 [1.457e25], param3: 0, param4: 9572635247348046842733492 [9.572e24])
    │   │   │   ├─ [19867] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 447018464596897451329361 [4.47e23])
    │   │   │   │   ├─ emit Transfer(from: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 447018464596897451329361 [4.47e23])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Withdraw(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 447018464596897451329361 [4.47e23])
    │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x0000000000000000000000000000000000000000, amount: 447018464596897451329361 [4.47e23])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ [22105] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::calc_withdraw_one_coin(447018464596897451329361 [4.47e23], 1) [staticcall]
    │   │   └─ ← 0x000000000000000000000000000000000000000000000000000000696d05b6ef
    │   ├─ [57628] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::remove_liquidity_one_coin(447018464596897451329361 [4.47e23], 1, 443744643992 [4.437e11])
    │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x0000000000000000000000000000000000000000, amount: 447018464596897451329361 [4.47e23])
    │   │   ├─ [24134] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 452800657135 [4.528e11])
    │   │   │   ├─ [23300] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 452800657135 [4.528e11]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 452800657135 [4.528e11])
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit RemoveLiquidityOne(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 447018464596897451329361 [4.47e23], param2: 452800657135 [4.528e11], param3: 16751397052024876581232291 [1.675e25])
    │   │   └─ ← 0x000000000000000000000000000000000000000000000000000000696d05b6ef
    │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: 0x0000000000000000000000000000000000000000, amount: 491720311056587196462297 [4.917e23])
    │   ├─ emit Withdraw(receiver: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9, amount: 452800657135 [4.528e11], shares: 491720311056587196462297 [4.917e23])
    │   ├─ [19308] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::transfer(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], 452800657135 [4.528e11])
    │   │   ├─ [18640] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::transfer(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], 452800657135 [4.528e11]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 452800657135 [4.528e11])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   └─ ← 452800657135 [4.528e11]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 0
    ├─ [1433] 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] 0xf31e1AE27e7cd057C1D6795a5a083E0453D39B50::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 452800657135 [4.528e11]
    │   └─ ← 452800657135 [4.528e11]
    └─ ← ()

Test result: ok. 6 passed; 0 failed; finished in 81.25s
```