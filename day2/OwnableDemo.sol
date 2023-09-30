// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract OwnableDemo {
    
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner== msg.sender,"This Is Not Owner");
        _;
    }

    function setOwner(address newOwner) public onlyOwner{
        require(newOwner != address(0),"Not Valid Address" );
        owner = newOwner;
    }
}