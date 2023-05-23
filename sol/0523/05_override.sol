// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public name = "A";

    function getName() public view returns (string memory) {
        return name;
    }
}

// 상속 후 재정의(오버라이드) 불가능
// contract B is A {
//     string public name = "Contract B";
// }

contract C is A {
    // This is the correct way to override inherited state variables.
    constructor() {
        name = "Contract C";
    }

    // C.getName returns "Contract C"
}