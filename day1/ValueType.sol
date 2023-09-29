// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract valueType{
    uint public a = 10; // 2**256-1
    int public b = -20; // -2**255 to +2**255-1
    string public c = "Hello Solidity";
    bool public d = true;
    address public e = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ; // Sample Eth Address
    bytes2 public f = "01";
}