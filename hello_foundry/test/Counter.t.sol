// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/1-counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        //counter.setNumber(2);
    }

    /*function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 3);
    }

    function testDecrement() public {
        counter.decrement();
        assertEq(counter.number(), 1);
    }


    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    } */

    //a way to chk failing test
    function testFailDecrement() public {
        counter.decrement();
    }

    //another way
    function testDecrementUnderFlow() public {
        vm.expectRevert(stdError.arithmeticError);
        counter.decrement();
    }
}
