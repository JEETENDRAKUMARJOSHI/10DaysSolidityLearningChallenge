// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//Data Location - Storage , Memory , Calldata

// Storage   - Varable is state variable  
// Memory    - Data is loaded in temp memory
// Calldata  - It is momory like except it can only be used for function inputs


contract StorageMemoryCalldata{
    
    uint[] public arr = [10,20,30,40,50];

    // struct TestLocation{
    //     uint num;
    //     string name;
    // }

    // TestLocation public TestLocations;

    

    function testStorage() public  {

        uint[] storage arrStorage = arr;
        arrStorage[1] = 120;
        
    }
    
    function testMemory() public view {
       uint[] memory arrMemory = arr;
       arrMemory[4] = 150;
    }

    // Calldata Vs Memory Check 
    // -------------------------

    function testMemory(string memory name, uint[] calldata num) public {
        	// 1147 gas - In Memory Gas cost more and can change data 
    }

    function testCalldata(string calldata name, uint[] calldata num) public {
        
            // 	709 gas  - In Calldata costs less gas and cant change data in it 
    }



}