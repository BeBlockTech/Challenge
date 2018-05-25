function b() {
	console.log("Called b");
}
b();

console.log(a);

var a = "\"Hello World\"";

console.log(a);

if (a === undefined){
	console.log("a is not defined.");
} else {
	console.log("a is defined withe the value of: " + a);
}

var hello = document.write("Hello Marcel");