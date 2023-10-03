// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A {

    function test() public pure virtual returns(string memory) {
        return "A - test";
    }

    function test2() public pure virtual returns(string memory) {
        return "A - test2";
    }   

    function test3() public  pure returns (string memory){
        return "Hello Function test3 of contract A ";
    }
}

contract B is A {
    function test() public pure override returns(string memory) {
        return "B - test";
    }

    function test2() public pure virtual override returns(string memory) {
        return "B - test2";
    }   
}

contract C is B{
       function test2() public pure override returns(string memory) {
        return "C - test";
    } 
}