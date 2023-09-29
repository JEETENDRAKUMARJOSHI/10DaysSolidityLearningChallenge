// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract GlobalVarDemo{
    function GlobalVars() public view returns(address ,uint, uint) {
        address sender = msg.sender;
        uint blocks = block.timestamp;
        uint blknumber = block.number;

        return (sender, blocks, blknumber);
    }


}