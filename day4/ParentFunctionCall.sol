// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A {

    event LogData(string  message);
    function checkFunA() public virtual  {
        emit LogData("Hello A with checkFunA ");
    }

    function checkFunA1() public virtual  {
        emit LogData("Hello A with checkFunA1 ");
    }
    
     function checkFunA2() public   {
        emit LogData("Hello A with checkFunA2 ");
    }
}

contract B is A{

    function checkFunA() public  virtual  override   {
        emit LogData("Hello B with checkFunA ");
        super.checkFunA1();
    }

    function checkFunA1() public virtual override   {
        emit LogData("Hello B with checkFunA1 ");
        A.checkFunA1();
    }
    
}

contract C is A,B {
    function checkFunA() public override(A,B)   {
        A.checkFunA();
    }
    function checkFunA1() public override(A,B)   {
        super.checkFunA();
    }
}