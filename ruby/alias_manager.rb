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
	p new_letter
end

vowel_changer ("a")


#Change consonant to the next consonant
def consonant_changer(letter)
	if letter == "z"
		new_letter = "b"
	else
	consonant_index = "bcdfghjklmnpqrstvwxyz".index(letter)
    new_letter ="bcdfghjklmnpqrstvwxyz"[consonant_index.next]
	end
	p new_letter
end
=end


USER INTERFACE

puts "Welcome to Alias Creator!"
puts "Please enter the name to create alias for, when finished type 'quit' "
name = gets.chomp

#Swapped first and last names, downcased and split into letters
name_arr = name.downcase!.split("").reverse!

#Next, separate all letters and apply changer method to vowels and consonants

name_arr.each do |letter|
  if "aeiou".index(letter) == nil
    consonant_changer(letter)
  else
    vowel_changer(letter)
  end
  
end


