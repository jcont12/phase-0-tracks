=begin
	
Prompt the designer/user for all of this information.

Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
=end

puts "Welcome to client details program! Fill out the following information:"

#Create a hash were everything will be inserted
client_detail = {}

#Ask information of the client, inserting answers in hash
print "name?"
client_detail[:name] = gets.chomp

print "age?"
client_detail[:age] = gets.chomp.to_i

print "children? (yes/no)"
kids = gets.chomp
  if kids == "yes"
	client_detail[:children] = true
  else
	client_detail[:children] = false
  end

#Creation of an array inside a hash to practice with both arrays and hashes
if client_detail[:children] == true
  puts "What are the children's names (separated by commas, only first name)"
  client_detail[:child_name] = gets.chomp.split(" ") 
end

print "do they have pets?(yes/no)"
animals = gets.chomp
  if animals == "yes"
	client_detail[:pets] = true
  else
	client_detail[:pets] = false
end

# Once we have compiled information, show the hash info to the user
puts "This is the clients information:"
p client_detail

info_update = false

until info_update

puts "Would you like to update information? (if not type 'none', otherwise type:name,age,children,pets)"

	new_info = gets.chomp
	if new_info == "name"
		puts "What is the new name?"
		client_detail[:name] = gets.chomp
		info_update = true
	elsif new_info == "age"
		puts "What is the new age?"
		client_detail[:age] = gets.chomp
		info_update = true
	elsif new_info == "children"
		puts "Do they have children?"
		new_kids = gets.chomp
 		 if new_kids == "yes"
			client_detail[:children] = true
  		else
			client_detail[:children] = false
  		end
		if client_detail[:children] == true
  		puts "What are the children's names (separated by commas, only first name)"
  		client_detail[:child_name] = gets.chomp.split(" ") 
  		else
  		  client_detail[:child_name] = nil
		end
		info_update = true
	elsif new_info == "pets"
		puts "Do they pets?"
		new_animals = gets.chomp
 		if new_animals == "yes"
			client_detail[:pets] = true
 		 else
			client_detail[:pets] = false
		end
		info_update = true
	elsif new_info == "none"
		puts "Thanks for using Client data program!"
		info_update = true
	else
		puts "I didnt understand you"
		info_update = false
	end
end

puts "The updated client info is:"
	
	p client_detail
	
	puts "Thanks for using Client data program!"

		

			
		

