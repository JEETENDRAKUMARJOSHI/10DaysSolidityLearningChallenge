// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EventDemo {
    
    event CheckEvent(string name, uint roll);

    event CheckEventOther(address indexed sender, uint num);

    event CheckTransactionLog(address indexed from, address indexed to, string message );

    function testEvent() public {
        emit CheckEvent("Hello World" , 1001);

        emit CheckEventOther(msg.sender, 456);
    }

    function sendMessage(address _to, string calldata _message) public{
        emit CheckTransactionLog(msg.sender,_to, _message);
    }
}