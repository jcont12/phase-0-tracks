
#Create a loop to ensure agent's input is equal to 'encrypt' or 'decrypt'
input = false

until input

#Ask if password will be encrypted or decrypted
puts "Welcome, would you like encrypt or decrypt password?"
requirement = gets.chomp

#Ask user for password to be encrypted or decrypted
puts "Write down password"
password = gets.chomp

#Conditional statement to encrypt or decrypt below methods on line 67

=begin 
1.- Create a method called encrypt
2.- While loop: WHILE the argument's current index is smaller than the length of the argument
3.- Select each letter through index and turn it into next letter with .next
4.- If current index of string is whitespace, do not affect it
5.- print the modified string
=end 

def  encrypt(string)

  index = 0

  while index < string.length
    if string[index] == " "
       index +=1 
    elsif string[index] == "z"
          string[index] = "a"
          index +=1
    else
	    string[index] = string[index].next!
     	index +=1 
    end
  end
  puts "the encrypted password is #{string}"
end 



=begin
1.- Create a method called "decrypt"
2.- While loop: WHILE the argument's current index is smaller than the length of the argument
3.- Take each letter from the script and identify its current number in string "a-z"
4.- The letter of each number should decrease by one and that will be the final letter (you may have to do two backwards and a next! so it stays that way.
ake the method return the letters encrypted by encrypt method to their original value (letter-1)
=end

def decrypt(string)

  current_index = 0
  
  while current_index < string.length
	  if string[current_index] == " "
		  current_index += 1
	  else
	    letter = string[current_index].downcase
	  	index_current_number = "abcdefghijklmnopqrstuvwxyz".index(letter)
	  	index_prior_number = index_current_number - 1
	    decrypted_letter = "abcdefghijklmnopqrstuvwxyz"[index_prior_number]
        string[current_index] = decrypted_letter
	  	current_index +=1
	  end
	end
	puts "the decrypted password is #{string}"
end

#Conditional statement 
if requirement == "encrypt" || requirement == "Encrypt" || requirement == "ENCRYPT"
	encrypt(password)
	input = true
elsif requirement == "decrypt" || requirement == "Decrypt" || requirement == "Decrypt"
    decrypt(password)
    input = true
else
	puts "input not valid, please write down 'encrypt' or 'decrypt'"
	input = false
end
end
		
