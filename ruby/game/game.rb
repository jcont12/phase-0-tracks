#Create a game class

class Guessgame
	attr_reader :word, :is_over
	attr_accessor :guesscount, :hidden_word, :successful

	def initialize
		@word = []
		@hidden_word = []
		@guess = []
		@guesscount = 0
		@is_over = false
		@successful= false
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
		@word[0].each_index do |i|  #Iterate through indexes instead of values
			if @word.dig(0,i) == letter #since @word is an array inside an array, dig helps us look in word ([0]) each index for the letter.
				@hidden_word[i] = letter #if found, substitute "_" for the letter guessed in the same index for @hidden_word
			end
		end
		p @hidden_word
	end
end

game = Guessgame.new

game.add("Fernanda")

#-------DRIVER CODE--------------

puts "Welcome to the Guessing game"
game = Guessgame.new
puts "---------------"

#Define what the mystery word will be through input
puts "Type word for competitor to guess"
input_w = gets.chomp
game.add(input_w)
game.hide(input_w)
game.guesscount = game.hidden_word.length + 5 #Give the user a fair amount of guesses... the number of letters + 5 (random) 

#Show the competitor the "_ _ _ _ _ _" version and let it know the amount of guesses he will have
puts "New word ready for guess = #{game.hidden_word} you have #{game.guesscount} tries!"
puts "---------------"

until game.is_over || game.successful || game.guesscount == 0
	puts "guess a letter"
	input_l = gets.chomp.downcase
	game.guess(input_l)
	game.guesscount = game.guesscount - 1
	p game.guesscount
end




#Ask the user to input a letter

#If letter is in the mystery word, update "_" into corresponding letter, otherwise don't... in both cases assign guesses one less try and give feedback

#Let the user know how many guesses he has left

#if word is completed, congratulate the user

#if guess counter runs out and he didn't finish, taunt


#WATCH  OUT:
#Dont let user write two words
#Dont let user repeat a letter 
