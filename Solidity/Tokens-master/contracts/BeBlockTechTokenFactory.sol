import "./BeBlockTechToken.sol";

pragma solidity ^0.4.8;

contract BeBlockTechTokenFactory {

    mapping(address => address[]) public created;
    mapping(address => bool) public isBeBlockToken; ////v tech verify without having to do a bytecode check.
    bytes public BeBlockTechByteCode;

    function HumanStandardTokenFactory() {
      //upon creation of the factory, deploy a BeBlockTechToken (parameters are meaningless) and store the bytecode provably.
      address verifiedToken = createBeBlockTech(1000000, "Verify Token", 3, "VTX");
      BeBlockTechByteCode = codeAt(verifiedToken);
    }

    //verifies if a contract that has been deployed is a BeBlockTech Standard Token.
    //NOTE: This is a very expensive function, and should only be used in an eth_call. ~800k gas
    function verifyBeBlockTechToken(address _tokenContract) constant returns (bool) {
      bytes memory fetchedTokenByteCode = codeAt(_tokenContract);

      if (fetchedTokenByteCode.length != BeBlockTechByteCode.length) {
        return false; //clear mismatch
      }

      //starting iterating through it if lengths match
      for (uint i = 0; i < fetchedTokenByteCode.length; i ++) {
        if (fetchedTokenByteCode[i] != BeBlockTechByteCode[i]) {
          return false;
        }
      }

      return true;
    }

    //for now, keeping this internal. Ideally there should also be a live version of this that any contract can use, lib-style.
    //retrieves the bytecode at a specific address.
    function codeAt(address _addr) internal constant returns (bytes o_code) {
      assembly {
          // retrieve the size of the code, this needs assembly
          let size := extcodesize(_addr)
          // allocate output byte array - this could also be done without assembly
          // by using o_code = new bytes(size)
          o_code := mload(0x40)
          // new "memory end" including padding
          mstore(0x40, add(o_code, and(add(add(size, 0x20), 0x1f), not(0x1f))))
          // store length in memory
          mstore(o_code, size)
          // actually retrieve the code, this needs assembly
          extcodecopy(_addr, add(o_code, 0x20), 0, size)
      }
    }

    function createBeBlockTechToken(uint256 _initialAmount, string _name, uint8 _decimals, string _symbol) returns (address) {

        BeBlockTechToken newToken = (new BeBlockTechToken(_initialAmount, _name, _decimals, _symbol));
        created[msg.sender].push(address(newToken));
        isBeBlockToken[address(newToken)] = true;
        newToken.transfer(msg.sender, _initialAmount); //the factory will own the created tokens. You must transfer them.
        return address(newToken);
    }
}
