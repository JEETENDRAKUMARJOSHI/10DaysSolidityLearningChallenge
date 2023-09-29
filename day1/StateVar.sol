// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StateVar{
    uint public a = 20 ;// State Variable
    string public name  = "Hello Solidity"; // State Variable

    function localVarDemo() public {
      
        a = 50; 
        name = "Not a State Variable";

    }
}