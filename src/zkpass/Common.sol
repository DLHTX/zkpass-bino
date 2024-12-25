// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

struct Proof {
    bytes32 taskId;
    bytes32 schemaId;
    bytes32 uHash;
    address recipient;
    bytes32 publicFieldsHash;
    address validator;
    bytes allocatorSignature;
    bytes validatorSignature;
}
