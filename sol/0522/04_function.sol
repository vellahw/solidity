// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract function1 {
    string public a = "hello";

    function test() public {
        a = "Hello World";
    }
}

// contract function2 {
//     string constant a = "hello"; //상수

//     function test() public {
//         a = "world";
//     }
// }

contract function2 {
    uint public a = 3;
    function test(uint _a) public  {
        a += _a;
    }
}

contract function3 {
    uint public a = 3;
    uint public b = 3;

    function test() public returns (uint, uint) {
        a = 20;
        b += 5;

        return (a, b);
    }
}

contract function4 {
    uint public a = 3;
    uint public b;

    function test(uint _b) public returns (uint, uint) {
        a = 20;
        b += _b;

        return (a, b);
    }
}

contract function5 {
    uint public a = 3;
    uint public b = myFun();

    function myFun() public returns (uint) {
        a = 100;
        return a;
    }
}
