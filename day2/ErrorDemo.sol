// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// require, revert, assert 

contract ErrorDemo {
    function testRequire(uint x) public pure {
        require(x ==5 ,"Not a good Number");
    }

    function testRevert(uint x) public pure{
        if(x>10){
            revert("Revert Occured ");
        }
    }
    uint public  y = 121;
    function testAssert() public view {
        assert(y == 123);
    }
}