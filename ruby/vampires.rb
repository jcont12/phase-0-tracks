puts "What is your name?"
name = gets.chomp

=begin
GET THEIR AGE RIGHT
1.- Ask for their age and year they were born.
2.- Take the age variable and substract it to 2017
3.- Compare answer (year_born) with 2017, if same true otherwise false
=end

#1 .- Ask for their age and year they were born.
puts "How old are you?"
age = gets.chomp.to_i

puts "What year where you born?"
year =  gets.chomp.to_i

# 2.- Take the age variable and substract it to 2017
year_born = 2017 - age 

# 3.- Compare answer (year_born) with 2017, if same true otherwise false

if year_born == year
	age_question = true
else
	age_question = false
end

=begin
WILLING TO EAT GARLIC BREAD?
1.- Ask if willing to eat garlic bread
2.- If answer is yes then true, if no then false
=end

#1- Ask if willing to eat garlic bread
puts "Our company cafeteria has garlic bread, would you like some?"
garlic = gets.chomp

#2.- If answer is yes then true, if no then false
case garlic
	when "yes", "Yes", "YES"
		garlic_question = true
	when "no", "No", "NO" 
		garlic_question = false
	end
		
=begin
WANTS INSURANCE?
1.- Ask if he wants insurance
2.- If answer is yes then true, if no then false
=end

#1.- Ask if he wants insurance
puts "Would you like to enroll in our company's life insurance?"
insurance = gets.chomp

#2.- If answer is yes then true, if no then false
case insurance
	when "yes", "Yes", "YES"
		insurance_question = true
	when "no", "No", "NO" 
		insurance_question = false
	end
		
=begin
If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If age_question is right (True), will eat garlic_question (true) or insurance_question (true) puts “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If age_question is wrong (false), will not eat garlic_question (false) or insurance_question (false) puts “Probably a vampire.”
=end
condition1 = age_question && (garlic_question || insurance_question)

condition2 = !(age_question && garlic_question && insurance_question)


if	condition1 == true
	puts "Probably not a vampire"
else 
	puts "Probably a vampire"
end

##if age_question (false), garlic_question (False) and insurance_question (false), print "Almost certainly a vampire"
if (age_question == false) && (garlic_question == false) && (insurance_question == false)
	puts "Almots certainly a vampire"
end

#anyone going by the name of “Drake Cula” or “Tu Fang” print “Definitely a vampire.”
if name == "Drake Cula"
	puts "Definitely a vampire"
elsif name == "Tu Fang"
	puts "Definitely a vampire"
else
end



