pragma solidity ^0.4.0;

contract HelloWorldContract {
    
    string word = "Hello World Marcel";
    address issuer;
    
    function HelloWorldContract(){
        issuer = msg.sender;
    }
    
	modifier ifIssuer(){
	    if(issuer != msg.sender){
	        revert();
	    }
	    else{
	        _;
	    }
	}
	
	function getWord() constant returns(string){
	    return word;
	}
	
	function setWord (string newWord) constant returns(string){
	    word = newWord;
	    return "This is the creator";
	   
	}
}
