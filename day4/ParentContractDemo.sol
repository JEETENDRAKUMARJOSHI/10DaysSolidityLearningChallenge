// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A {
        string public name;
        constructor(string memory _name){
            name = _name;
        }
}

contract B{
    string public Sname;
        constructor(string memory _Sname){
            Sname = _Sname;
        }
}

// First way to call parent constructor 
contract C is A("H"),B("E") {
    
}

// 2nd way to call parent constructor

contract D is A,B{
    constructor(string memory _name, string memory _Sname) A(_name) B(_Sname) {
    }
}