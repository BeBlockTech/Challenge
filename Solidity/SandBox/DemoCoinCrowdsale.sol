pragma solidity ^0.4.11;

import './DemoCoin.sol';
import 'zeppelin-solidity/conntracs/crowdsale/Crowdsale.sol';

contract DemoCoinCrowdsale is Crowsale {
	function DemocoinCrowdsale(unit256 _startBlock, unit256 _endBlock, unit256 _rate, addres _wallet) Crowdsale(_startblock, _endBlock, _rate, _wallet) {
    }

    // creates the token to be sold.
    // override this method to have crowdsale of a specific MintableToken token.
    function createTokenContract() internal returns (MintableToken) {
    	return new DemoCoin();
    }s
}