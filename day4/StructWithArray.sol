// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StructWithArray {
    struct Student{
        uint roll;
        string name;
        //uint[3] marks;
    }
 Student public s1;
 Student[4] public s2; // fixed array access
 Student[] public s3;  // Dynamic array access


 function insertDataUsingStructWithArray(uint _roll, string calldata _name, uint setIndex ) public {
  
    s2[setIndex] = Student(_roll,_name); // fixed array access
    s3.push(Student(_roll,_name)); // Dynamic array access
  
    // s2[1] = Student(_roll,_name);
    // s2[2] = Student(_roll,_name);
    // s2[3] = Student(_roll,_name);
 }

//  function addData(uint _roll, string calldata _name, uint[3] memory _marks ) public {
//     s1.roll = _roll;
//     s1.name = _name;
//     s1 = Student(_roll, _name, _marks);

//  }


//  function addData(uint _roll, string calldata _name ) public {
//     // s1.roll = _roll;
//     // s1.name = _name;
//     // s1 = Student(_roll, _name, _marks);

//  }

//  function getData(uint checkIndex) public view returns (uint){
//     // return s1.marks[0]; 

//  }


}