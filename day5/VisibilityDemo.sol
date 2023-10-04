// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// public   - Inside and Outside Contract
// private  - Only Inside Contract 
// internal - Only Inside Contract and Child Contract 
// external - Only From Outside Contract

contract VisibilityDemo_A {
    uint private  x = 0;
    uint internal y = 1;
    uint public z = 2;

    function pub() public pure returns(uint){
        return 0;
    }

    function pri() private pure returns(uint) {
        return 100;
    }

    function intern() internal pure returns(uint){
        return 200;
    }

    function extern() external pure returns(uint) {
        return 300;
    }

    function checkVisibility() public view {   

        x + y + z;
        pri();
        intern();
        pub();
        //extern(); External function can call Only From Outside Contract
        // or you can call external in same contract 

        this.extern(); // But it cost more gas to don't do it 
    }
}

contract VisibilityDemo_B is VisibilityDemo_A {

    function checkVisibility2() public view {
         y + z; // x is private to can't access 

         intern();
         pub();
        // external and private can't access 
    }

}

