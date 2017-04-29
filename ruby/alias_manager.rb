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



puts "Welcome to Alias Creator!"
puts "Please enter the name to create alias for, when finished type 'quit' "
name = gets.chomp
name_arr = name.downcase!.split(" ")
name_arr[0], name_arr[1] = name_arr[1], name_arr[0]
switched_name = name_arr.join(" ")
chars_arr = switched_name.split("")


#Next, separate all letters and apply changer method to vowels and consonants
new_name = []
chars_arr.each do |letter|
  if "aeiou".index(letter) == nil
   new_name << consonant_changer(letter)
  else
    new_name << vowel_changer(letter)
    new_name.push
  end
end

# Print out separate names with capitalization!
downcased = new_name.join.split(" ")

downcased.each {|name| name.capitalize!}

name.capitalize!

puts "#{name} is also known as " + downcased.join(" ")