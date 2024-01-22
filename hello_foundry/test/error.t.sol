// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/3-error.sol";

contract ErrorTest is Test {
    Error public error;

    function setUp() public {
        error = new Error();
    }

    function testFail() public {
        error.throwError();
    }
}
