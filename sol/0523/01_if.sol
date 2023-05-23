// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 지갑에 송금하기
contract Ex4_6 {
   mapping (uint a => uint sendMoney) public addr;

    function fun1(uint end, uint sendMoney) public returns(uint) {
        uint result = 0;
        if(end > 5) {
            for(uint a = 0; a < end; ++a){
                result = result + sendMoney;
                addr[a] += result;
            }

        
       }
        return result;
    }

    
}