pragma solidity ^0.4.15;

import 'zeppelin-solidity/contracts/crowdsale/CappedCrowdsale.sol';
import './ExampleToken.sol';

contract ExampleCrowdsale is CappedCrowdsale {
    function ExampleCrowdsale(uint256 _startTime, uint256 _endTime)
        Crowdsale(_startTime, _endTime, 100, msg.sender)
        CappedCrowdsale(7 ether) {
    }

    function createTokenContract() internal returns (MintableToken) {
        return new ExampleToken();
    }
}
