// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract myIndex {
    event numberTracker(uint256 indexed num, string str);

    uint256 num = 0;
    function PushEvent(string memory _str) public {
        emit numberTracker(num, _str);
        num++;
    }
}