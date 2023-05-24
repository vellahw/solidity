// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0; //0.8.4로 설정후 작업

contract test {
     uint public constant num1 = 0; 
    // uint[] public immutable arr; 
    uint public immutable num2; 

    // 생성자
    constructor(uint _num) {
        num2 = _num;
    }

    //에러 발생함
    function change() public pure returns(uint) {
     // num2 = 10;
    }
 }