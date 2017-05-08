#Create a game class

class Guessgame
	attr_reader :hidden_word
	attr_accessor :guess

	def initialize
		@word = []
		@hidden_word = []
		@guess = []
		@guesscount = 0
		@succesful = false
	end

	def add(word)
		@word << word.downcase.split("")
	end

	def hide(word)
		word.length.times {@hidden_word << "_" }
		@hidden_word
	end

	def guess(letter)
		@guess << letter.downcase
		@guess.compact
	end
end

game = Guessgame.new

game.add("Fernanda")

#-------DRIVER CODE--------------

puts "Welcome to the Guessing game"
#Define what the mystery word will be through input

#Create a method that turns the word into "_ _ _ _ _ _ " format
	#input word
	#Split into spaces 
	#Count number of spaces
	# add _ for that number of spaces

#Show the competitor the "_ _ _ _ _ _" version and let it know the amount of guesses he will have

#Ask the user to input a letter

#If letter is in the mystery word, update "_" into corresponding letter, otherwise don't... in both cases assign guesses one less try and give feedback

#Let the user know how many guesses he has left

#if word is completed, congratulate the user

#if guess counter runs out and he didn't finish, taunt


#WATCH  OUT:
#Dont let user write two words
#Dont let user repeat a letter 
