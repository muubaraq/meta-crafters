// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    // Integer variable
    uint256 public integerValue;

    // String variable
    string public stringValue;

    // Boolean variable
    bool public booleanValue;

    // Address variable
    address public addressValue;

    // Set integer variable
    function setIntegerValue(uint256 _value) public returns (uint256) {
        integerValue = _value;
        return integerValue;
    }

    // Get integer variable
    function getIntegerValue() public view returns (uint256) {
        return integerValue;
    }

    // Set string variable
    function setStringValue(string memory _value) public returns (string memory) {
        stringValue = _value;
        return stringValue;
    }

    // Get string variable
    function getStringValue() public view returns (string memory) {
        return stringValue;
    }

    // Set boolean variable
    function setBooleanValue(bool _value) public returns (bool) {
        booleanValue = _value;
        return booleanValue;
    }

    // Get boolean variable
    function getBooleanValue() public view returns (bool) {
        return booleanValue;
    }

    // Set address variable
    function setAddressValue(address _value) public returns (address) {
        addressValue = _value;
        return addressValue;
    }

    // Get address variable
    function getAddressValue() public view returns (address) {
        return addressValue;
    }
}
