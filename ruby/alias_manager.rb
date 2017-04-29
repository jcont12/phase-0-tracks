=begin
Write a method that takes a spy real name and does the following:
swaps first and last name
changes vowels to the next vowel
changes consonants to next consonant.
Take into account the upcase and downcases
Once name has been changed Capitalize first letter of each word

Final input Felicia Torres - Vussit Gimodoe
=end

#Change vowel to the next vowel

def vowel_changer(letter)
	if letter == "u"
		new_letter = "a"
	else
		vowel_index = "aeiou".index(letter)
   		new_letter ="aeiou"[vowel_index.next]
	end
end

#Change consonant to the next consonant
def consonant_changer(letter)
	if letter == "z"
		new_letter = "b"
	elsif letter == " "
	  new_letter = " "
	else
		consonant_index = "bcdfghjklmnpqrstvwxyz".index(letter)
    	new_letter ="bcdfghjklmnpqrstvwxyz"[consonant_index.next]
	end
end

#So that every alias created can be stored in a hash, we create this hash outside of the loop
aliases = {}

#---USER INTERFASE---#

puts "Welcome to Alias Creator!"


#loop until agent types quit
quit = false

until quit

  puts "Please enter the name to create alias for, when finished type 'quit' "
  name = gets.chomp
  	if name == "QUIT" || name == "quit" || name == "Quit"
  		puts "Safe Mission!"
  		quit = true 
  	else
		name_arr = name.downcase!.split(" ") #downcased and split words
		name_arr[0], name_arr[1] = name_arr[1], name_arr[0] #switched name positions
		switched_name = name_arr.join(" ") #turned array to string to separate characters
		chars_arr = switched_name.split("") #Separated characters
#Next, separate all letters and apply changer method to vowels and consonants
		new_name = []
		chars_arr.each do |letter|
  			if "aeiou".index(letter) == nil
   				new_name << consonant_changer(letter)
  			else
    			new_name << vowel_changer(letter)
  			end
  		end
# Print out separate names with capitalization!
		downcased = new_name.join.split(" ")


		downcased.each {|name| name.capitalize!}

		name.capitalize!

		puts "#{name} is also known as " + downcased.join(" ")

		
		aliases[name] = downcased.join(" ")
  	end 
end

#Prin all aliases
p aliases