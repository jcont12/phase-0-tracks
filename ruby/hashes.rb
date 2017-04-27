=begin
	
write a program that will allow an interior designer to enter:
the details of a given client:
 name, age, number of children, decor theme, pets.
keys should be symbols unless you find that you need a string for some reason
Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
=end

puts "Welcome to client details program! Fill out the following information:"

#create an array were everything will be accessed
client_detail = {
	name: "",
	age: "",
	children: ""
}

#ask information of the client
print "name?"
name = gets.chomp
print "age?"
age = gets.chomp
print "children?"
children = gets.chomp.to_i


client_detail