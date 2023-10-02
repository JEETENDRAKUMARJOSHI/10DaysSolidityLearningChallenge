// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StructDemo1{

    struct Mobile{
        string model;
        uint yearOfLaunch;
        address owner;
        uint price;
    }

    Mobile  mobile;
    Mobile[] public mobiles;

    // mapping (address=>Mobile[]) public mobileOwner;

    function testExamples() public  {
        Mobile memory nokia = Mobile("Express Music", 2009, msg.sender, 8000);
        Mobile memory Motorola = Mobile({
            model:"Moto G73",
            yearOfLaunch : 2023,
            owner : msg.sender,
            price : 16000
        });

        Mobile memory OnePlus;

        OnePlus.model = "Oneplus 11";
        OnePlus.yearOfLaunch = 2022;    
        OnePlus.owner = msg.sender;
        OnePlus.price = 45000;

        mobiles.push(nokia);
        mobiles.push(Motorola);
        mobiles.push(OnePlus);

        mobiles.push(Mobile("Samsung Galaxy Ultra", 2022,msg.sender,120000));
        delete mobiles[3];
    }

}