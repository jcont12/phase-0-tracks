=begin
Write a method that takes a spy real name and does the following:
swaps first and last name
changes vowels to the next vowel
changes consonants to next consonant.

Final input Felicia Torres - Vussit Gimodoe
=end

def vowel_changer(letter)
	if letter == "u"
		new_letter = "a"
	else
	vowel_index = "aeiou".index(letter)
    next_index = vowel_index.next
    new_letter ="aeiou"[next_index]
	end
	p new_letter
end

vowel_changer("a")

vowel_changer("e")

vowel_changer("i")

vowel_changer("o")

vowel_changer("u")