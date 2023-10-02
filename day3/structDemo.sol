// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

struct Student{
    uint roll;
    string name;
}

contract StructDemo{

    Student public s;

    constructor(uint _roll, string memory _name){
        s.roll = _roll;
        s.name = _name;
    }

    function changeData(uint rollNo, string memory _name) public{
        
        Student memory s2 = Student({
            roll : rollNo,
            name : _name
        });

        s = s2;
    }   

}