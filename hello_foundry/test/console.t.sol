// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

contract ConsoleTest is Test {
    function testSomething() public {
        console.log("print this", 111);
    }
}
