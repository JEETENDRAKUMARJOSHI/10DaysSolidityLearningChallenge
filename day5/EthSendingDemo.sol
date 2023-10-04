// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// 3 Ways to send Eth 

// transfer - 6513 gas, reverts 
// send - 2260 gas,returns bool 
// call - all gas returns bool and data 

contract SendingEthDemo {

    constructor() payable  {
        
    }

    receive() external payable { }
    
    function sendByTranfer(address payable _to) public payable{
        _to.transfer(20);
    }

    function sendBySend(address payable _to) public payable{
        bool sent = _to.send(30);
        require(sent, "Send Failed..");
    }

    function sendByCall(address payable _to) public payable{
        (bool success,) = _to.call{value : 50}("");
        require(success, "Call Failed...");
    }
}

contract EthReciever {
    event CheckLog(uint amount, uint gas);

    receive() external payable { 
        emit CheckLog(msg.value, gasleft());
    }
}