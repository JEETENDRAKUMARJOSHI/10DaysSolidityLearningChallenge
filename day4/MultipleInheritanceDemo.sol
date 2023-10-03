// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A{

    function test() public pure returns(string memory) {
        return "A";
    }
}

contract B{
    function testB() public pure returns(string memory) {
        return "B";
    }
}

contract C is A,B{}

contract D is A{}