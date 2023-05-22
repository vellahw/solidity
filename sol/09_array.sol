// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract exam6 {
  
uint256[] public b; 
    function addArray(uint _value) public {
        b.push(_value); // 0 : 5, 1 : 10
    }
    function getArray(uint _index) public view returns(uint)  {
        return b[_index];
    }

    function ChangeArray(uint _index, uint _value) public{
        b[_index] = _value;
    }

     function settingArray() public {
        if(b.length == 0) {
            b.push(10000);
        } else {
            b[0] = 10000;
        }
       
        b[b.length] = 9999; // 맨마지막
        //b[getLength()] = 88888; // 맨마지막 - 이런거 함수로 참조하기를 권장
    }

    function deleteArray() public {
        b.pop();
    }
    function DeleteArray2(uint _index)public{
        delete b[_index];
    }
    function getLength() public view returns(uint) {
        return b.length;
    }

}