// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ViewAndPureDemo{
    uint public a = 10;

    function funViewDemo() public view returns(uint){
        return a;
    }

    function funPureDemo() public pure returns (uint){
        return 1;
    }
}