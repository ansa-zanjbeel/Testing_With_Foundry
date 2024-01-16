# Testing_With_Foundry

This project demonstrates foundry testing.

Try running some of the following tasks:

```bash

  (installation)
* curl -L https://foundry.paradigm.xyz | bash

* forge init hello_foundry
* forge build (compile)
* forge test (test)
* forge test --match-path test/helloworld.t.sol (specific contract test)
* forge test -vvv (verbosity)
* forge test --match-path test/helloworld.t.sol --gas-report (gas report)
* forge remappings (to know what lib u installed)


```

## Foundry_Book

- setUp: An optional function invoked before each test case is run.
- test: Functions prefixed with test are run as a test case.
- testFail: The inverse of the test prefix - if the function does not revert, the test fails.
- A good practice is to use the pattern `test_Revert[If|When]_Condition` in combination with the expectRevert cheatcode. so that we know exactly what reverted and with which error.
- cheatcodes `https://book.getfoundry.sh/forge/cheatcodes`
- other testing practices `https://book.getfoundry.sh/tutorials/best-practices`

```
⚠️ Note: Test functions must have either external or public visibility. Functions declared as internal or private won't be picked up by Forge, even if they are prefixed with test.
```

```
💡 Tip:  Use the getCode cheatcode to deploy contracts with incompatible Solidity versions.
```
