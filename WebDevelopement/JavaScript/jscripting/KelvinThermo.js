const kelvin = prompt('What is the Kelvin temperature today?');
// Declaring a constant variable

var celcius = kelvin - 273;
// Substracting 273 from the constant variable and assing it to the variable celcius

let fahrenheit = celcius * (9/5) + 32;
// The algorithm to calculate the fahrenheit temp.

fahrenheit = Math.floor(fahrenheit);
// Ronding the results of farhrenheit to a decimal number

console.log(`The temperature is ${fahrenheit} degrees fahrenheit.`)
// Using string interpolation to concatinate strings
