// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Script, console} from "forge-std/Script.sol";
import {Vault} from "../src/Vault.sol";
import {VerifyingClaimer} from "../src/VerifyingClaimer.sol";

contract Deployer is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        // 部署 Vault
        Vault vault = new Vault();
        console.log("Vault deployed to:", address(vault));
        
        // 等待确认
        vm.sleep(10);
        
        // 计算未来时间戳
        uint256 futureTimestamp = block.timestamp + 7 days;
        console.log("Setting end timestamp to:", futureTimestamp);
        
        // 部署 VerifyingClaimer
        VerifyingClaimer verifyingClaimer = new VerifyingClaimer(
            address(vault),
            0xb7009dd6858c73dF7CE1A9EDC47fBd5688B82f22,
            0x2bc4048a1883f4c744052574708fea07e90d2f278ec73968c98fa742f8764257,
            futureTimestamp
        );
        console.log("VerifyingClaimer deployed to:", address(verifyingClaimer));
        
        // 等待确认
        vm.sleep(10);
        
        // 添加 Claimer
        vault.addClaimer(address(verifyingClaimer));
        
        vm.stopBroadcast();
    }
}