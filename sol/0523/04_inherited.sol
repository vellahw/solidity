// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Parent{
    string public familyName = "Kim";
	
    function getFamilyName() view public returns(string memory){
        return familyName;
    } 
}

contract Child is Parent{
    
}