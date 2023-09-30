// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract functionModifierDemo {
    
    uint public count;

    function add(uint x, uint y) public pure returns (uint){
        return x + y;
    }

    modifier checkCount() {
        require(count>0,"Count should not 0");
        _;
    }

    function inc() public   {
         count++;
    }
    function dec() public checkCount {
        count--;
    }


}