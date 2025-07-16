
Hello Celo 
Say hello to Web3! This project contains a simple smart contract written in Solidity, deployed on the Celo Alfajores testnet using Foundry. Built as part of the Celo Colombia Bootcamp.

--------------------------------------------------------------------------

 Main Contract

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract HelloWorld {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function greet(string memory name) external pure returns (string memory) {
        return string(abi.encodePacked("Hello, ", name, "!"));
    }
}
```


--------------------------------------------------------------------------

Prerequisites
Foundry installed:

curl -L https://foundry.paradigm.xyz | bash
foundryup

Celo RPC node: https://alfajores-forno.celo-testnet.org

A funded account on Alfajores (get CELO from the faucet)


-----------------------------------------------------------------------

 Project Commands

forge init hello-celo
forge build
forge test
forge script script/Deploy.s.sol \
  --rpc-url $CELO_NODE_URL \
  --broadcast \
  --account wallet-hello-celo


------------------------------------------------------------
 Warnings

Celo does not support EIP-3855 — avoid Solidity versions ≥ 0.8.20

Make sure your wallet has enough CELO to cover gas fees

--------------------------------------------------------------------

##  Project Structure


```
hello-celo/
├── src/HelloWorld.sol
├── script/Deploy.s.sol
├── test/HelloWorld.t.sol
├── .env
├── foundry.toml
├── lib/forge-std/
├── broadcast/
├── cache/
```






--------------------------------------------------------------



##  Additional Resources

- [Foundry Book](https://book.getfoundry.sh/)
- [Celo Docs](https://docs.celo.org/)
- [CeloScan Alfajores](https://alfajores.celoscan.io/)

=======
```shell
$ anvil
```

### Deploy

