// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EtherWallet {
    address payable public owner;
    constructor() {
        owner = payable (msg.sender);
    }   

    receive() external payable { }

    function withdraw(uint _amount) public  {
        require(msg.sender == owner, "Caller is not Owner ");
        payable (msg.sender).transfer(_amount);
    }   

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}