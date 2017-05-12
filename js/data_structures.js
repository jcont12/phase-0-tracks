// Declare two separate arrays

var colors = ["Blue","Green","purple","black"];

var horseNames = ["Speedy","Nacho","Agave","Bravo"];


// Create code to add values to arrays
horseNames.push("Horsy");
colors.push("palomino");

console.log(horseNames[0]);
console.log(colors);

// Use your two arrays to create an object. The keys of your object should be horse names, and the values should be colors.

var horseList = {};
horseList[horseNames[0]] = colors[0];

console.log(horseList)

