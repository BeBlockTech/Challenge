var a = 4; //a is a global variable, it can be accessed by the functions below

function foo() {
	var b = a * 3; // b can not be accessed outside of foo function, 
	              //but can be accessed by function defined inside of foo
	 function bar(c) {
	 	var b = 2;  // another 'b' varable is created inside bar function scope
	 	            // the changes to this new 'b' variable don't affect the old 'b' varaible
	    console.log(a, b, c);var a = 4; //a is a global variable, it can be accessed by the functions below

function foo() {
	var b = a * 3; // b can not be accessed outside of foo function, 
	              //but can be accessed by function defined inside of foo
	 function bar(c) {
	 	var b = 2;  // another 'b' varable is created inside bar function scope
	 	            // the changes to this new 'b' variable don't affect the old 'b' varaible
	    console.log(a, b, c);
	 }
	 bar(b * 4);
}}

foo(); // 4, 2, 48

//IIFE, Immediately Invoked Function Expression, is a common pattern for
//creating local scopes.

//Example:

       (function(){ // the function expression is surrounded by parenthesis
           // variables defined here
           // can't be accessed outside
       })(); // the function is immediately invoked
