// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        
    }
}