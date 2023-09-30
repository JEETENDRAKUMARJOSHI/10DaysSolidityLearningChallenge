// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ConstructorDemo {

    address public owner;
    string public ownerName;

    constructor(string memory name){
        ownerName = name;
        owner = msg.sender;
    }
}