// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ConstantDemo{ // 147123 Gas ,address call - 356 gas , uint call - 329 gas
    address public constant MY_ADD = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant num = 120;
}

contract OtherConstantDemo{ //202870 gas , address call - 2489 gas , uint call - 2429 gas
    address public  MY_ADD = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public  num = 120;
}