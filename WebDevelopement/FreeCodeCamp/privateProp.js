
var Car = function() {
  // this is a private variable
  var speed = 10;

  // these are public methods
  this.accelerate = function(change) {
    speed += change;
  };

  this.decelerate = function() {
    speed -= 5;
  };

  this.getSpeed = function() {
    return speed;
  };
};

var Bike = function() {

  // Only change code below this line.

  var gear = 0;
  
  this.setGear = function(set) {
    gear = set;
  };
  
  this.getGear = function() {
    return gear;
  };
 
};

var myBike = new Bike();
myBike.setGear(2);
var result = myBike.getGear();
console.log(result);