#Create a game class

class Guessgame
	attr_reader :hidden_word, :word
	attr_accessor :guesscount

	def initialize
		@word = []
		@hidden_word = []
		@guess = []
		@guesscount = 0
		@is_over = false
		@succesful = false
	end

	def add(word)
		@word << word.downcase.split("")
	end

#Create a method that turns the word into "_ _ _ _ _ _ " format by splitting word into spaces, and add "_" for every letter
	def hide(word)
		word.length.times {@hidden_word << "_" }
		@hidden_word
	end

	def guess(letter)
		@guess << letter.downcase
		@word[0].each_index do |i|
			if @word.dig(0,i) == letter
				p i
			else
				puts "no"
			end
		end
	end
end

game = Guessgame.new

game.add("Fernanda")

#-------DRIVER CODE--------------

puts "Welcome to the Guessing game"
game = Guessgame.new
#Define what the mystery word will be through input
puts "Type word for competitor to guess"
input_w = gets.chomp
game.add(input_w)
game.hide(input_w)

puts "guess letter"
input_l = gets.chomp.downcase
p game.word
game.guess(input_l)



#Show the competitor the "_ _ _ _ _ _" version and let it know the amount of guesses he will have

#Ask the user to input a letter

#If letter is in the mystery word, update "_" into corresponding letter, otherwise don't... in both cases assign guesses one less try and give feedback

#Let the user know how many guesses he has left

#if word is completed, congratulate the user

#if guess counter runs out and he didn't finish, taunt


#WATCH  OUT:
#Dont let user write two words
#Dont let user repeat a letter 
