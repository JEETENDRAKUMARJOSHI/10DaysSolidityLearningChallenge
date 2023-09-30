// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ForLoopDemo {
    function forLoop() public pure {

        for (uint x=0; x<10; x++) 
        {
            if(x == 4){
                continue ;
            }
        if(x == 7){
            break ;
        }
        }
    }
}