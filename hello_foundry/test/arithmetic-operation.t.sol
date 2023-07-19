// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/arithmetic-operation.sol";

contract ArithmeticOperationTest is Test {
    ArithmeticOperation public arithmeticoperation;

    function setUp() public {
        arithmeticoperation = new ArithmeticOperation();
        arithmeticoperation.setNumber(4, 2);
    }

    function testadd() public {
        arithmeticoperation.add();
        assertEq(
            arithmeticoperation.firstnumber() +
                arithmeticoperation.secondnumber(),
            6
        );
    }

    function testsub() public {
        arithmeticoperation.sub();
        assertEq(
            arithmeticoperation.firstnumber() -
                arithmeticoperation.secondnumber(),
            2
        );
    }
}
