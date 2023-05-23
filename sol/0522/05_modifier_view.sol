// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract modiView {

    uint public a = 4;

    function fun1() public view returns(uint)  {
       // a = 20; //에러남 이유: view에서는 외부 함수를 수정할 수 없다.
       
        uint b = a+3;
        return b;
    }
}