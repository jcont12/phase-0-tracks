#Create a game class

class Guessgame
	attr_reader :word, :guessed
	attr_accessor :guesscount, :hidden_word, :successful

	def initialize
		@word = []
		@hidden_word = []
		@guessed = []
		@guesscount = 0
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

#If letter is in the mystery word, update "_" into corresponding letter, otherwise don't.. 
	def guess(letter)
		@guessed << letter.downcase
		@word[0].each_index do |i|  #Iterate through indexes instead of values
			if @word.dig(0,i) == letter #since @word is an array inside an array, dig helps us look in word ([0]) each index for the letter.
				@hidden_word[i] = letter #if found, substitute "_" for the letter guessed in the same index for @hidden_word
			end
		end
		p @hidden_word #give feedback of results
	end
end

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
puts "---------------"

#Show the competitor the "_ _ _ _ _ _" version and let it know the amount of guesses he will have
puts "New word ready for guess = #{game.hidden_word} you have #{game.guesscount} tries!"
puts "---------------"

#Start the guessing loop... first thing to check is if word is already completed, if not ask for letter and apply guess method, decrease guesscount
until game.successful || game.guesscount == 0
	puts "guess a letter"
	input_l = gets.chomp.downcase 
	if
		game.guessed.include?(input_l) #find out if the word guessed is already included in the guessed options
		puts "you have already used this word, try another one"
	else
		game.guess(input_l)
		game.guesscount = game.guesscount - 1
		puts "You have #{game.guesscount} guesses left and have already used letters: #{game.guessed}" #Let the user know how many guesses he has left
		puts "---------------"
		if game.guesscount == 0
			puts "HA-ha! too bad..you ran out of guesses!! better luck next time!!" #if guess counter runs out and he didn't finish, taunt
		end
	end
	if game.hidden_word == game.word[0]
		puts "CONGRATULATIONS!!! THE MYSTERY WORD IS - #{game.word.join} - YOU WON!!" #if word is completed, congratulate the user
		game.successful = true
	end
end















