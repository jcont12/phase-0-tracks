// Declare two separate arrays

var colors = ["Blue","Green","purple","black"];

var horseNames = ["Speedy","Nacho","Agave","Bravo"];


// Create code to add values to arrays
horseNames.push("Horsy");
colors.push("palomino");

// Use your two arrays to create an object. The keys of your object should be horse names, and the values should be colors.
// Write a conditional so that hash is only created if array lengths are equal.

var horseList = {}; //hash were key/value pairs will be inserted

for (var i = 0; i < horseNames.length; i++) {
	if (horseNames.length == colors.length) {
		horseList[horseNames[i]] = colors[i]
	}
	else {
	}
}

console.log(horseList)

//Write a constructor function for a car with a few properties of various data types, including at least one function.

function Car(brand,color) {
	console.log("New car:", this);
	this.brand = brand;
	this.color = color;
	this.description = function() { console.log("This " + this.brand + " is " + this.color)} 
	console.log("CAR INITIALIZATION COMPLETE");
}

//Create a new instance, print to verify and call the function within the object
var newVehicle = new Car("toyota","red");
console.log(newVehicle)
newVehicle.description()

