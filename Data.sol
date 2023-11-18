// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherConverter {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function convertEther() external payable {
        // Function to receive ether and do the conversion
    }

    function getValueInWei() external view returns (uint256) {
        return address(this).balance;
    }

    function getValueInEther() external view returns (uint256) {
        return address(this).balance / 1 ether;
    }

    function getValueInGwei() external view returns (uint256) {
        return address(this).balance / 1 gwei;
    }

    // Function to allow the owner to withdraw funds
    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
