=begin
1.-Create a hash were everything will be inserted
2.- Ask information of the client, inserting answers in hash
3.- Once the info is compiled, show hash info to the user
#If we need to update any of the info, ask the client what to update and update hash, otherwise type none and finish
=end

puts "Welcome to client details program! Fill out the following information:"

#1.-Create a hash were everything will be inserted
client_detail = {}

#2.-Ask information of the client, inserting answers in hash
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


#If we need to update any of the info, ask the client what to update and update hash, otherwise type none and finish
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

		

			
		

