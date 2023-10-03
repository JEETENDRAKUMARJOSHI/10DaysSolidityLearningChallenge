// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Todo {

    struct Tasks{
        uint id;
        string description;
        bool isCompletd;
    }
    
    Tasks[] public tasks;

    function addTask(uint _id, string calldata _desc, bool _isCompleted) public {
        tasks.push(Tasks(_id, _desc,_isCompleted));
    }

    function updateTask(uint _index, string calldata _desc) public {
        tasks[_index].description = _desc;
    }

    function deleteTask(uint _index) public {
        delete tasks[_index];
    } 
    
    }
