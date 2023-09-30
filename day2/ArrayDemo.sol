// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Array - Dynamic and Fixed Size 

contract ArrayFixedDemo {
    
    uint[] public arrayDynamic = [1,2,3,4];
    uint[3] public arrayFixed = [5,6,7];

    function checkArrays() public {
        arrayDynamic.push(10); //[1,2,3,4,10]
        uint x = arrayDynamic[1];
        arrayDynamic[2] = 50 ;
        delete arrayDynamic[1];
        arrayDynamic.pop();
        uint len = arrayDynamic.length;

        //Create Array in Memory

        uint[] memory a = new uint[](5);
        // a.push(20); TypeError: Member "push" is not available in uint256[] memory outside of storage
        // a.pop(); TypeError: Member "push" is not available in uint256[] memory outside of storage
        a[0] = 121;
        a[1] = 122;
    }

    function returnArray() public view returns (uint[] memory){
        return arrayDynamic;
    }
}