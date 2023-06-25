```rust
  [1039892] GreenBondTest::testClaim(16421 [1.642e4])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [261] GreenBond::USDT() [staticcall]
    │   └─ ← TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9]
    ├─ [9655] TransparentUpgradeableProxy::totalSupply() [staticcall]
    │   ├─ [2327] ArbitrumExtension::totalSupply() [delegatecall]
    │   │   └─ ← 438399007144122 [4.383e14]
    │   └─ ← 438399007144122 [4.383e14]
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
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x0000000000000000000000000000000000000000000000000000000000004025)
    │   └─ ← ()
    ├─ [25452] TransparentUpgradeableProxy::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 16421 [1.642e4])
    │   ├─ [24618] ArbitrumExtension::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 16421 [1.642e4]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 16421 [1.642e4])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [457965] GreenBond::deposit(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], 16421 [1.642e4])
    │   ├─ [3844] TransparentUpgradeableProxy::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [3010] ArbitrumExtension::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 16421 [1.642e4]
    │   │   └─ ← 16421 [1.642e4]
    │   ├─ [26524] TransparentUpgradeableProxy::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 16421 [1.642e4])
    │   │   ├─ [25852] ArbitrumExtension::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 16421 [1.642e4]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 16421 [1.642e4])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [21948] Vyper_contract::calc_token_amount([0, 16421 [1.642e4]], true) [staticcall]
    │   │   └─ ← 16210805847123898 [1.621e16]
    │   ├─ [25452] TransparentUpgradeableProxy::approve(Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 16421 [1.642e4])
    │   │   ├─ [24618] ArbitrumExtension::approve(Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 16421 [1.642e4]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], amount: 16421 [1.642e4])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [80724] Vyper_contract::add_liquidity([0, 16421 [1.642e4]], 15886589730181420 [1.588e16])
    │   │   ├─ [12844] TransparentUpgradeableProxy::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 16421 [1.642e4])
    │   │   │   ├─ [12172] ArbitrumExtension::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], 16421 [1.642e4]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], amount: 16421 [1.642e4])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 16210805847123898 [1.621e16])
    │   │   ├─ emit AddLiquidity(provider: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], token_amounts: [0, 16421 [1.642e4]], fees: [0, 0], invariant: 16743268674880614283621585 [1.674e25], token_supply: 16525624603775045480014430 [1.652e25])
    │   │   └─ ← 16210805847123898 [1.621e16]
    │   ├─ [24264] Vyper_contract::approve(Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], 16210805847123898 [1.621e16])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], amount: 16210805847123898 [1.621e16])
    │   │   └─ ← true
    │   ├─ [226172] Vyper_contract::deposit(16210805847123898 [1.621e16])
    │   │   ├─ [224037] Vyper_contract::deposit(16210805847123898 [1.621e16]) [delegatecall]
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
    │   │   │   ├─ emit UpdateLiquidityLimit(_user: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], _original_balance: 16210805847123898 [1.621e16], _original_supply: 14352586947077086707414931 [1.435e25], _working_balance: 6484322338849559 [6.484e15], _working_supply: 9424513252913863335153790 [9.424e24])
    │   │   │   ├─ [6544] Vyper_contract::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], 16210805847123898 [1.621e16])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], amount: 16210805847123898 [1.621e16])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 16210805847123898 [1.621e16])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 16210805847123898 [1.621e16])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 16210805847123898 [1.621e16])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], amount: 16421 [1.642e4], shares: 16210805847123898 [1.621e16])
    │   └─ ← 16210805847123898 [1.621e16]
    ├─ [273] GreenBond::YEAR_IN_SECONDS() [staticcall]
    │   └─ ← 31536000 [3.153e7]
    ├─ [0] VM::warp(1719224971 [1.719e9])
    │   └─ ← ()
    ├─ [377456] GreenBond::claimRewards(TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9])
    │   ├─ [1325] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [1153] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 16210805847123898 [1.621e16]
    │   │   └─ ← 16210805847123898 [1.621e16]
    │   ├─ [1325] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [1153] Vyper_contract::balanceOf(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 16210805847123898 [1.621e16]
    │   │   └─ ← 16210805847123898 [1.621e16]
    │   ├─ [259413] Vyper_contract::withdraw(1621080584712389 [1.621e15], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], true)
    │   │   ├─ [259232] Vyper_contract::withdraw(1621080584712389 [1.621e15], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], true) [delegatecall]
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
    │   │   │   ├─ emit UpdateLiquidityLimit(_user: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], _original_balance: 14589725262411509 [1.458e16], _original_supply: 14352586945456006122702542 [1.435e25], _working_balance: 5835890104964603 [5.835e15], _working_supply: 9424513252265431101268834 [9.424e24])
    │   │   │   ├─ [22667] Vyper_contract::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 1621080584712389 [1.621e15])
    │   │   │   │   ├─ emit Transfer(from: Vyper_contract: [0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 1621080584712389 [1.621e15])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Withdraw(_user: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], _value: 1621080584712389 [1.621e15])
    │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x0000000000000000000000000000000000000000, amount: 1621080584712389 [1.621e15])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ [23183] Vyper_contract::calc_withdraw_one_coin(1621080584712389 [1.621e15], 1) [staticcall]
    │   │   └─ ← 1641
    │   ├─ [58491] Vyper_contract::remove_liquidity_one_coin(1621080584712389 [1.621e15], 1, 1608)
    │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x0000000000000000000000000000000000000000, amount: 1621080584712389 [1.621e15])
    │   │   ├─ [24134] TransparentUpgradeableProxy::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 1641)
    │   │   │   ├─ [23300] ArbitrumExtension::transfer(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 1641) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: Vyper_contract: [0x7f90122BF0700F9E7e1F688fe926940E8839F353], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 1641)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit RemoveLiquidityOne(provider: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], token_amount: 1621080584712389 [1.621e15], coin_amount: 1641, token_supply: 16525624602153964895302041 [1.652e25])
    │   │   └─ ← 1641
    │   ├─ [19308] TransparentUpgradeableProxy::transfer(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], 1641)
    │   │   ├─ [18640] ArbitrumExtension::transfer(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], 1641) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 1641)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ emit RewardsClaimed(sender: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: TransparentUpgradeableProxy: [0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9], tokenAmount: 1641, shares: 1621080584712389 [1.621e15])
    │   └─ ← 1641
    ├─ [1433] TransparentUpgradeableProxy::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   ├─ [602] ArbitrumExtension::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [delegatecall]
    │   │   └─ ← 1641
    │   └─ ← 1641
    └─ ← ()

```