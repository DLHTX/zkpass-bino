// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Proof} from "./Common.sol";

interface IVerifier {
    function verify(Proof calldata _proof) external view returns (bool);
}
