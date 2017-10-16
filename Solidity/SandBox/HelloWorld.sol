pragma solidity ^0.4.0;

contract HelloWorldContract {
    
	string word = "Hello World Marcel";
	
	function getWord() constant returns(string) {
	    return word;
	}
	
	function setWord (string newWord) constant returns(string) {
	    word = newWord;
	    return word;
	}
}
