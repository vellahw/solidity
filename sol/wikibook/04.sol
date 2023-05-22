// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Ex2_4 {

    uint a = 5+2; //7
    uint b = 5-2; //3
    uint c = 5*2; //10
    uint d = 5/5; //1
    uint e = 5%2; //1
    uint f = 5**2; //25?

    function arithmetic() public view returns(uint, uint, uint, uint, uint, uint) {
	    return(a, b, c, d, e, f);
    }
}