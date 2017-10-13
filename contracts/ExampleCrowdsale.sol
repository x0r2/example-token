pragma solidity ^0.4.15;

import 'zeppelin-solidity/contracts/crowdsale/CappedCrowdsale.sol';
import './ExampleToken.sol';

contract ExampleCrowdsale is CappedCrowdsale {
    function ExampleCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet, uint256 _cap)
        Crowdsale(_startTime, _endTime, _rate, _wallet)
        CappedCrowdsale(_cap) {
    }

    function createTokenContract() internal returns (MintableToken) {
        return new ExampleToken();
    }
}
