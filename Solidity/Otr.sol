pragma solidity ^0.4.0;

contract Coin {
    address public minter;
    mapping (address => uint) public balances;
    
    event Sent(address ffrom, address to, uint amount);
    
    function Coin() {
        minter = msg.sender;
    }
    
    function mint(address receiveer, uint amount) {
        if (msg.sender != minter) return;
        balances[receiver] += amount;
    }
    
    function send(address receiver, uint amount) {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }
}