// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CounterDemo{
    uint public a;
    function inc() public {
         a += 1;
        
    }

    function dec() public {
        a -= 1;
    }
}