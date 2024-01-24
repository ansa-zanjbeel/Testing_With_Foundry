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

```

```
