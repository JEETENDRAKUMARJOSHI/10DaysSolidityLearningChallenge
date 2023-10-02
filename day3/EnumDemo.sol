// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EnumDemo {
        enum Week {
            Sun, 
            Mon,
            Tue,
            Wed,
            Thu,
            Fri,
            Sat 
        }
    Week public day1 = Week.Mon;

    function checkWeekDays() public view returns (string memory) {
        if(day1==Week.Sat){
            return "Weekday";
        }else{
            return "Not Weekday";
        }
    }


}