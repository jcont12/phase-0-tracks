
puts "What is the hamster's name?"
name = gets.chomp

integer = false
until integer

puts "How squeaky and noisy is he/she? from 1-10 (1 being autistic to 10 being horror movie)"
volume = gets.chomp.to_i
	if volume.between?(1,10)
		integer = true
	else
		integer = false
		puts "please answer with integers 1 to 10"
	end
end

puts "What is his/her hair color?"
fur_color = gets.chomp

puts "Is he a danger to himself/herself or society?"
dangerous = gets.chomp

puts "How old does he appear to be?"
hamster_age = gets.chomp

if hamster_age = ""
	hamster_age = nil
end

puts "Info on the last hamster:
The last hamster taken goes by the name of #{name}.
He/she is believed to be #{hamster_age} years old.
Its fur color is #{fur_color}.
He has a volume level of #{volume}.
Is this hamster a danger to society: #{dangerous}"

