// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MubazToken {
    string public constant name = "Mubaz";
    string public constant symbol = "MBZ";
    uint8 public constant decimals = 18;

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    constructor(uint256 initialSupply) {
        mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) public {
        totalSupply += amount;
        balanceOf[to] += amount;
    }

    function burn(address from, uint256 amount) public {
        require(balanceOf[from] >= amount, "Insufficient balance to burn");
        totalSupply -= amount;
        balanceOf[from] -= amount;
        
    }
}