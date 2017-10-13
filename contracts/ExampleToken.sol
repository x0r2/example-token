pragma solidity ^0.4.15;


import 'zeppelin-solidity/contracts/token/MintableToken.sol';


contract ExampleToken is MintableToken {
    string public name = 'Example Token';

    string public symbol = 'EXT';

    uint256 public decimals = 18;
}
