```rust
  [671176] GreenBondTest::testDepositUSDC(46258 [4.625e4])
    ├─ [0] VM::assume(true) [staticcall]
    │   └─ ← ()
    ├─ [284] GreenBond::USDC() [staticcall]
    │   └─ ← TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8]
    ├─ [9651] TransparentUpgradeableProxy::totalSupply() [staticcall]
    │   ├─ [2411] ArbFiatToken::totalSupply() [delegatecall]
    │   │   └─ ← 1070707084240383 [1.07e15]
    │   └─ ← 1070707084240383 [1.07e15]
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
    ├─ [0] VM::store(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 0xf85b56951f6ca259eb015e4162809ffc1dd28bc06ffa5a7aa716f2780313bdca, 0x000000000000000000000000000000000000000000000000000000000000b4b2)
    │   └─ ← ()
    ├─ [31939] TransparentUpgradeableProxy::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 46258 [4.625e4])
    │   ├─ [31193] ArbFiatToken::approve(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 46258 [4.625e4]) [delegatecall]
    │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 46258 [4.625e4])
    │   │   └─ ← true
    │   └─ ← true
    ├─ [452203] GreenBond::deposit(TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], 46258 [4.625e4])
    │   ├─ [1384] TransparentUpgradeableProxy::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [staticcall]
    │   │   ├─ [638] ArbFiatToken::allowance(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f]) [delegatecall]
    │   │   │   └─ ← 46258 [4.625e4]
    │   │   └─ ← 46258 [4.625e4]
    │   ├─ [23651] TransparentUpgradeableProxy::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 46258 [4.625e4])
    │   │   ├─ [23049] ArbFiatToken::transferFrom(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 46258 [4.625e4]) [delegatecall]
    │   │   │   ├─ emit Transfer(from: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 46258 [4.625e4])
    │   │   │   ├─ emit Approval(owner: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], spender: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 0)
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [21948] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::calc_token_amount([46258 [4.625e4], 0], true) [staticcall]
    │   │   └─ ← 0x00000000000000000000000000000000000000000000000000a22e72e8476a6b
    │   ├─ [27939] TransparentUpgradeableProxy::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 46258 [4.625e4])
    │   │   ├─ [27193] ArbFiatToken::approve(0x7f90122BF0700F9E7e1F688fe926940E8839F353, 46258 [4.625e4]) [delegatecall]
    │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 46258 [4.625e4])
    │   │   │   └─ ← true
    │   │   └─ ← true
    │   ├─ [77852] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::add_liquidity([46258 [4.625e4], 0], 44737016939564720 [4.473e16])
    │   │   ├─ [9971] TransparentUpgradeableProxy::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 46258 [4.625e4])
    │   │   │   ├─ [9369] ArbFiatToken::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0x7f90122BF0700F9E7e1F688fe926940E8839F353, 46258 [4.625e4]) [delegatecall]
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 46258 [4.625e4])
    │   │   │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0x7f90122BF0700F9E7e1F688fe926940E8839F353, amount: 0)
    │   │   │   │   └─ ← true
    │   │   │   └─ ← true
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 45650017285270123 [4.565e16])
    │   │   ├─ emit AddLiquidity(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: [46258 [4.625e4], 0], param2: [0, 0], param3: 16743268704707542977917518 [1.674e25], param4: 16525624633214256918160655 [1.652e25])
    │   │   └─ ← 0x00000000000000000000000000000000000000000000000000a22e72e8476a6b
    │   ├─ [24264] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::approve(0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 45650017285270123 [4.565e16])
    │   │   ├─ emit Approval(owner: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], spender: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 45650017285270123 [4.565e16])
    │   │   └─ ← true
    │   ├─ [226172] 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f::deposit(45650017285270123 [4.565e16])
    │   │   ├─ [224037] 0x9336DA074c4f585a8B59A8C2B77a32b630cde5A1::deposit(45650017285270123 [4.565e16]) [delegatecall]
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
    │   │   │   ├─ emit UpdateLiquidityLimit(param0: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], param1: 45650017285270123 [4.565e16], param2: 14352586976516298145561156 [1.435e25], param3: 18260006914108049 [1.826e16], param4: 9424513264689547910412280 [9.424e24])
    │   │   │   ├─ [6544] 0x7f90122BF0700F9E7e1F688fe926940E8839F353::transferFrom(GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, 45650017285270123 [4.565e16])
    │   │   │   │   ├─ emit Transfer(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], to: 0xCE5F24B7A95e9cBa7df4B54E911B4A3Dc8CDAf6f, amount: 45650017285270123 [4.565e16])
    │   │   │   │   └─ ← true
    │   │   │   ├─ emit Deposit(from: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 45650017285270123 [4.565e16])
    │   │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBond: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f], amount: 45650017285270123 [4.565e16])
    │   │   │   └─ ← ()
    │   │   └─ ← ()
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], amount: 45650017285270123 [4.565e16])
    │   ├─ emit Deposit(depositor: GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496], token: TransparentUpgradeableProxy: [0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8], amount: 46258 [4.625e4], shares: 45650017285270123 [4.565e16])
    │   └─ ← 45650017285270123 [4.565e16]
    ├─ [553] GreenBond::balanceOf(GreenBondTest: [0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496]) [staticcall]
    │   └─ ← 45650017285270123 [4.565e16]
    └─ ← ()

```