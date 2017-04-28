=begin
Write a method that takes a spy real name and does the following:
swaps first and last name
changes vowels to the next vowel
changes consonants to next consonant.
Take into account the upcase and downcases
Once name has been changed Capitalize first letter of each word

Final input Felicia Torres - Vussit Gimodoe
=end

#Swap first and last name
def name_swapper(firstname, lastname)
	



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



