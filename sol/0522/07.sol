// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract exam {
    uint public var1 = 1;
    uint var2 = 2; //private은 생략 가능(화면상에 보이지 않음)
    uint internal var3 = 3;

    // view: 외부에서 데이터 가져와도 내부에서 데이터 값 변경 불가능
    function fun1() public view returns (uint, uint, uint) {
        return (var1, var2, var3);

    }

     // private: 화면에 안 나옴
    function fun2() private view returns (uint, uint, uint) {
        return (var1, var2, var3);
        
    }

     // internal: 
    function fun3() internal view returns (uint, uint, uint) {
        return (var1, var2, var3);
        
    }

    function fun4() external pure returns (uint) {
        return 2;
    }

    function fun5() public view returns (uint) {
        return this.fun4();
    }

}