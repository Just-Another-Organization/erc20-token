// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/JustAnotherToken.sol";

contract JustAnotherTokenTest {

    JustAnotherToken s;
    function beforeAll () public {
        s = new JustAnotherToken();
    }

    function testTokenNameAndSymbol () public {
        Assert.equal(s.name(), "JustAnotherToken", "token name did not match");
        Assert.equal(s.symbol(), "JAT", "token symbol did not match");
    }
}