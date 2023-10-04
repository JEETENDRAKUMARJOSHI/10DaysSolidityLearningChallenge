// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract PayableDemo {
    address payable public  owner; 

    constructor() {
        owner == payable (msg.sender);
    }

    function deposite() payable  public {}

    function getBalance() public view returns(uint){
        return address(this).balance;        
    }
}