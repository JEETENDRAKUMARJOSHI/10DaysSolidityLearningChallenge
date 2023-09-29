// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract functionDemo{
    function funWithoutParam() public pure returns(string memory){
        return "Hello Function without Parameters";
    }

    function funWithParam(uint a, uint b) public pure returns(uint){

        return a+b;
    }

    function funWithString(string memory name) public pure returns(string memory){
        return name;
    }
}