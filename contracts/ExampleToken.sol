pragma solidity ^0.4.15;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract ExampleToken is MintableToken {
    string constant public name = 'Example Token';
    string constant public symbol = 'EXT';
    uint8 constant public decimals = 18;
}
