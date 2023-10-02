// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MappingWithStruct {
    
    struct studentData{
        uint roll;
        string name; 
    }

     studentData  student;

    mapping (uint=>studentData) public studentMap; 

    function addStudent(uint _rollNo, string memory _name) public  {
        
        studentMap[_rollNo] = studentData(_rollNo, _name);
    }

    function deleteData(uint index) public {
        delete studentMap[index];
    }
}