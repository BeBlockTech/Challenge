
// Setup
var testString = "Ada Lovelace and Charles Babbage designed the first computer and the software that would have run on it.";

// Example
var expressionToGetSoftware = /software/gi;
var softwareCount = testString.match(expressionToGetSoftware).length;
  

// Only change code below this line.

var expression = /and/gi;  // Change this Line

// '/' is the start of thr regular expression
// 'and' is the word  we want to find
// 'g' stands for global and 'i' for ignore uppercase or lowercase

// Only change code above this line

// This code counts the matches of expression in testString
var andCount = testString.match(expression).length;

