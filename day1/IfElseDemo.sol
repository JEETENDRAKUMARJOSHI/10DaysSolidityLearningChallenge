// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract IfElseDemo{
    function checkNum(uint a) public pure returns(string memory){

        if (a> 10){
            return "a is greater then 10";
        }else{
            return "a is less then 10 ";
        }
    }   

    function checkNumByTernary(uint a) public pure returns(string memory){
        return a>10?"A is greater then 10" : "a is lesser then 10" ;
    }
}
