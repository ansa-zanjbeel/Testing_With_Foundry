// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ArithmeticOperation {
    uint256 public _firstnumber;
    uint256 public _secondnumber;

    function setNumber(uint256 number1, uint256 number2) public {
        _firstnumber = number1;
        _secondnumber = number2;
    }

    function add() public view returns (uint256) {
        uint256 addition = _firstnumber + _secondnumber;
        return addition;
    }

    function sub() public view returns (uint256) {
        uint256 substraction = _firstnumber - _secondnumber;
        return substraction;
    }

    function mul() public view returns (uint256) {
        uint256 multiplication = _firstnumber * _secondnumber;
        return multiplication;
    }

    function div() public view returns (uint256) {
        uint256 division = _firstnumber / _secondnumber;
        return division;
    }
}
