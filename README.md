# Testing_With_Foundry

**This Project demonstrates Foundry Testing**

- Try running some of the following tasks:

```bash

  (installation)
- curl -L https://foundry.paradigm.xyz | bash
- forge init hello_foundry
- forge build (compile)
- forge test (test)
- forge test --match-path test/helloworld.t.sol (specific contract test)
- forge test -vvv (verbosity)
- forge test --match-path test/helloworld.t.sol --gas-report (gas report)
- forge remappings (to know what lib u installed)
- forge fmt (formatter)
```

```
       Verbosity levels:
          - 2: Print logs for all tests
          - 3: Print execution traces for failing tests
          - 4: Print execution traces for all tests, and setup traces for failing tests
          - 5: Print execution and setup traces for all tests
```

**Remapping | Testing With Foundry**

- forge install rari-capital/solmate
- forge update lib/solmate (for update)
- forge remove solmate

## Foundry_Book

**Writing Tests**

- setUp: An optional function invoked before each test case is run.
- test: Functions prefixed with test are run as a test case.
- testFail: The inverse of the test prefix - if the function does not revert, the test fails.
- A good practice is to use the pattern `test_Revert[If|When]_Condition` in combination with the expectRevert cheatcode. so that we know exactly what reverted and with which error.
- cheatcodes `https://book.getfoundry.sh/forge/cheatcodes`
- other testing practices `https://book.getfoundry.sh/tutorials/best-practices`
- we can also use shared setups by creating `helper abstract contracts` and inheriting them in your test contracts.

```

⚠️ Note: Test functions must have either external or public visibility. Functions declared as internal or private won't be picked up by Forge, even if they are prefixed with test.

```

```

💡 Tip: Use the getCode cheatcode to deploy contracts with incompatible Solidity versions.

```

**CheatCodes**

- read more about cheatcodes
  `https://book.getfoundry.sh/forge/cheatcodes`
- the prank cheatcode can change our identity to the zero address

**Forge Standard Library Overview**

- Vm.sol: Up-to-date cheatcodes interface
- console.sol and console2.sol: Hardhat-style logging functionality
- Script.sol: Basic utilities for Solidity scripting
- Test.sol: A superset of DSTest containing standard libraries, a cheatcodes instance (vm), and Hardhat console

```
// Access Hevm via the `vm` instance
vm.startPrank(alice);

// Assert and log using Dappsys Test
assertEq(dai.balanceOf(alice), 10000e18);

// Log with the Hardhat `console` (`console2`)
console.log(alice.balance);

// Use anything from the Forge Std std-libraries
deal(address(dai), alice, 10000e18);
```

**Standard libraries**

Forge Std currently consists of six standard libraries.

- Std Logs
- Std Assertions
- Std Cheats
- Std Errors
- Std Storage
- Std Math

**Std Logs**
Std Logs expand upon the logging events from the DSTest library.

**Std Assertions**
Std Assertions expand upon the assertion functions from the DSTest library.

**Std Cheats**
Std Cheats are wrappers around Forge cheatcodes that make them safer to use and improve the DX.
You can access Std Cheats by simply calling them inside your test contract, as you would any other internal function

**Std Errors**
Std Errors provide wrappers around common internal Solidity errors and reverts.
Std Errors are most useful in combination with the expectRevert cheatcode, as you do not need to remember the internal Solidity panic codes yourself. Note that you have to access them through stdError, as this is a library.
