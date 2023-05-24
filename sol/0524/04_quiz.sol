// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Monitor {
    string public name;
    
    constructor(string memory _name){
        name = _name;
    }

    function show() public pure returns(string memory){
        return "show";
    }
}

contract SystemUnit {
    string public name = "XG12";
    
    function turnOn() public pure returns(string memory){
        return "turnOn";
    }
}

contract myContract {
    // 상속
    Monitor public mointor;
    SystemUnit public systemUnit;

    // 생성자 
    constructor() {
        mointor = new Monitor("DW12");
        systemUnit = new SystemUnit();
    }

    function getAllNames() public view returns (string memory, string memory) {
        return (mointor.name(), systemUnit.name());
    }

    function start() public view returns (string memory, string memory) {
        return (mointor.show(), systemUnit.turnOn());
    }
}