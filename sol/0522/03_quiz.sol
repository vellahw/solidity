// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract test {
    uint public _block_Basefee = block.basefee;
    uint public  _block_chainid = block.chainid;
    address public  _block_coinbase = block.coinbase;
    uint public  _block_timestamp = block.timestamp;
    address public  _msg_sender = msg.sender;

    // function gasleft() public tokenDecimal returns(uint256) {
        
    // }

    string public tokenName = "Ether";
    string public tokenSymbol = "ETH";
    uint public tokenTotalSupply = 10000;
}
