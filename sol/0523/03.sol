// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract myToken {

    event _transfer(address from, address to, uint amount);

    string private tokenName; // Ether
    string private tokenSymbol; // ETH
    uint private tokenTotalSupply; // 1000
    uint private tokenDecimal; // 1 ether = 10 ^18 wei =>18

    //key: address 값: uint private이라 안보임
     mapping(address => uint) private balances;
    
    // tokenName, Symbol, Decimal, totalSupply 지정
    function start(string memory _name, string memory _symbol, uint _totalSupply, uint _decimal) public{
        tokenName = _name;
        tokenSymbol = _symbol;
        tokenDecimal = _decimal;
        mint(msg.sender,_totalSupply); 
    
    }

    // view: 외부데이터 함수 내부에서 변경 불가
    function name() public view returns(string memory) {
        return tokenName;
    }

    function symbol() public view returns(string memory) {
        return tokenSymbol;
    }

    function totalSupply() public view returns(uint) {
        return tokenTotalSupply;
    }

    function decimal() public view returns(uint) {
        return tokenDecimal;
    }

    function balanceOf(address _addr) public view returns(uint) {
        return balances[_addr];
    }

    // virtual: 오버라이딩 하기 위함? "이 함수는 덮어쓸 수 있습니다."
    function mint(address _addr, uint amount) internal virtual {
        //balances의 키: _addr, 값: balances[_addr]+ amount ??
        balances[_addr] += amount; 
        tokenTotalSupply += amount;
    }

    function transfer(address _to, uint _amount) public {
        // 예외 처리 후 메세지 띄움
        require( balances[msg.sender] >= _amount, "Too much to send tokens");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit _transfer(msg.sender, _to, _amount);
    }
}