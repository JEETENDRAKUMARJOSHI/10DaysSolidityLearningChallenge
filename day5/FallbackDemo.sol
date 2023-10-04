// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FallbackDemo {

    event testLog(string message);

    fallback() external payable { 
        emit testLog("Fallback Called "); //	22863 gas 
    }
    receive() external payable { 
        emit testLog("Recieved Called "); // 	22830 gas 
    }
}