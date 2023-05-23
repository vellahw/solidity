// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract myToken {
    address userAddr; //유저주소
    uint result; //결과 금액
    uint userMoney;

    // 유저가 버튼을 누르면 실행되게 함
    function start() public {
        userAddr = msg.sender; // 주소 입력받아 변수에 저장
        result = 100;
    }

    // 버튼을 누르면 userAddr이 출력되는 함수
    //view: 외부값(userAddr) 내부에서 변경 불가능
    function showUserInfo() public view returns (address) {
        return userAddr;
    }

    //버튼을 누르면 result 값을 출력
    function getResult() public view returns (uint) {
        return result;
    }

    //버튼을 누르면 result 값에 1+2+3+4+5를 누적
    function calc() public returns (uint) {
        for (uint i=0; i<6; i++) {
            result += i;
        }
        return result;
    }

    // 사용자가 입력한 금액만큼 차감하기
    function minusMoney(uint userMoney) public {
        if(result >= userMoney) {
            result -= userMoney;
        }
    }
} 