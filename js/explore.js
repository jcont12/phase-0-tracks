
//1.- Create a function on javascript with a parameter (word to reverse)
//2.- The word we want to reverse should be put into a variable so we can call its index (word[i])
//3.- Get the length of the word, and store each letter from last to first within a variable through its index
//4.- Join the array to create the word

function reverse(word) {
	var reversedWord = []
	for (var index = word.length - 1; index > -1; index--) {
		reversedWord.push(word[index])
	}
	console.log(reversedWord.join("",reversedWord))
}

reverse("Jorge")
reverse(" Hello World")
