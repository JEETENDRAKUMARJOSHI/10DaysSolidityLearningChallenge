// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract immutableDemo {
  
    uint public  x = 0;
    //address public owner = msg.sender; // 	45709 gas 
    address public immutable owner = msg.sender; // 	43574 gas
    function testImmutable() public {
        require(owner == msg.sender, "Not Owner" );
        x += 1;
    }
}