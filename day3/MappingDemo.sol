// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MappingDemo{

    mapping (uint=>string) public rollNo;
        //   Key => Value
    function getName(uint _roll) public view returns(string memory){
        return rollNo[_roll];
    }
    
    function setName(string memory sName, uint id) public {
        rollNo[id] = sName;
    }

}