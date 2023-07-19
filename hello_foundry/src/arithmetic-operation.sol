// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ArithmeticOperation {
    uint256 public firstnumber;
    uint256 public secondnumber;

    function setNumber(uint256 number1, uint256 number2) public {
        firstnumber = number1;
        secondnumber = number2;
    }

    function add() public view returns (uint256) {
        uint256 addition = firstnumber + secondnumber;
        return addition;
    }

    function sub() public view returns (uint256) {
        uint256 substraction = firstnumber - secondnumber;
        return substraction;
    }
}
