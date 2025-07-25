// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/HelloWorld.sol";

contract DeployScript is Script {
    function run() external {
        vm.startBroadcast();
        HelloWorld deployed = new HelloWorld();
        console.log("Contrato desplegado en:", address(deployed));
        vm.stopBroadcast();
    }
}
