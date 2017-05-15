 //write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

//1.- Create a function that takes in the array
//2.- Select each value on the array and count its words
//3.- Create a variable that has a large number, and count down from that number down...
//4.- When that number is equal to the largest length and other lenghts, push into an array
//5.- Since the first item in the array will be the longest length, call index 0 of array

var phrases = ["long phrase","longest phrase","longer phrase"]
var orderedPhrases = []


function longest(array) {
	var orderedPhrases = []
	for (var index = 100; index > 0; index--) {
		for (var i = 0; i < phrases.length; i++) {
			if (index == phrases[i].length){
				orderedPhrases.push(phrases[i])
			}
		}
	}
	console.log(orderedPhrases[0])
}

longest(phrases)


//Write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.)

//1.- Create a function that takes in two objects
//2.- Iterate through objects1, so that every keyvalue pair is analyzed
//3.- While iterating on objects1, when analizing the first keyvalue pair an iteration of object 2 keyvalue pairs must be done
//4.- If any of the keyvalue pairs on objects 1 is equal to an objects2 value pair declare true


var list1 = {name: "Steven", age: 54};
var list2 = {name: "Tamir", age: 54};

function compare(objects1, objects2) {
	for (var property in objects1) {
		if (property + ":" + objects1[property] == property + ":" + objects2[property]) {
			console.log(true)
		}
	}
}

compare(list1,list2)

//Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
//So if we ran your function with an argument of 3, we would get an array of 3 random words back.
// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
// (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so
// is relatively straightforward.)

//1.- Create a function with a parameter for an integer
//2.- Create an empty array variable
//3.- While a variable is smaller than the number argument, create a random word
//4.- Limit the word to have a maximum of 10 characters


//Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.