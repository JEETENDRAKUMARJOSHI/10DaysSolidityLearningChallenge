// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DoWhileLoopDemo {
    
    function testWhile(uint x) public pure returns (string memory) {
        
        while (x<5) 
        {
            return "Hello";
        }
    }
}