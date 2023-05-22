// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Ex2_5 {

    uint a = 5;

    function justA() public view returns(uint){
        return a; //5
    }
    
    function prePlus() public returns(uint){
	    return ++a; // a = a+1 //6 땡--> 5
    }
    
    function postPlus() public returns(uint){
	    return a++;// a = a+1 //5 땡 --> 6
    }
}