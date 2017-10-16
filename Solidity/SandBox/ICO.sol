pragma solidity ^0.4.11;

import 'zappelin-solidity/contracts/token/MintanbleToken.sol';

contract DemoCoin is MintableToken {
	string public name = "DEMO COIN";
	string publid simbol = "DEM";
	unit256 public decimals  = 18;
}
