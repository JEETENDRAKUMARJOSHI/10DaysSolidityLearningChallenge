// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract NestedMappingDemo{

    mapping (uint=> mapping (string=>string))  userData;
    //       key =>         (Key   => Value )

    function setData(uint _roll, string memory _add, string memory _name) public {
        userData[_roll][_add] = _name;
        //       row   column    value
    }

    function getData(uint roll, string memory _add) public view returns(string memory){
        return userData[roll][_add];
        //              row  column          
    }
    

}