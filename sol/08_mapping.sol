// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract exam5 {
    mapping(address => uint) public a;
    
    function addMapping(address _key, uint _value) public {
      a[_key] = _value;  
    }

    function getMapping(address _key) public view returns(uint) {
        return a[_key];
    }

    function deleteMapping(address _key) public {
        delete(a[_key]);
        //a[_key]=0; 
    }

    function ChangeMapping(address _key, uint _value) public {
        a[_key] = _value; 
    }
}