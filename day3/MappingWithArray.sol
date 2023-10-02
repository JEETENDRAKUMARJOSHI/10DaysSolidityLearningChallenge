// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MappingWithArray{

    mapping(address=>uint[]) myMapArr;


    function setData(address _add, uint _roll) public {
        myMapArr[_add].push(_roll);
    }

    function getData(address _add) public view returns(uint[] memory){
        return myMapArr[_add];
    }

}