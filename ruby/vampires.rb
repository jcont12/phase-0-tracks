
#How many employees will we interview?
puts "How many potential employees will be processed?"
employees = gets.chomp.to_i

#Do a loop that interviews the number of employees that we'll be interviewing... remember to close at the end of the interview! 
interviews = 0
until interviews == employees

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
List allergies to see if he is allergic to sun
1.- Aski if he is allergic to anything
2.- Until he says sunshine or done, continue asking the same question.
3.- If he writes sunshine, directly "probably a vampire, if done end loop
=end

#2.- Until he says sunchine or done, continue asking the same question.
=begin 
NOTE: In order to be able to jump from sunshine into "Probably a vampire" without the following conditions affecting variable, I placed if question after
all the conditions on line 132
=end
allergy_question = false

until allergy_question 
#1.- Ask if he is allergic to anything
puts "Please list all your allergies one by one, if you don't have any or once you are done listing them type 'done'" 
allergy = gets.chomp
#Continued on line 132


=begin
If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If age_question is right (True), will eat garlic_question (true) or insurance_question (true) puts “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If age_question is wrong (false), will not eat garlic_question (false) or insurance_question (false) puts “Probably a vampire.”
=end
condition1 = age_question && (garlic_question || insurance_question)


if	condition1 == true
	vampire = "Probably not a vampire"
else 
	vampire = "Probably a vampire"
	if (garlic_question || insurance_question)
		vampire = "Results Inconclusive"
	else !(garlic_question || insurance_question)
		vampire = "Results Inconclusive"
	end
end

#if age_question (false), garlic_question (False) and insurance_question (false), print "Almost certainly a vampire"
if (age_question == false) && (garlic_question == false) && (insurance_question == false)
	vampire = "Almost certainly a vampire"
end

#anyone going by the name of “Drake Cula” or “Tu Fang” print “Definitely a vampire.”
if name == "Drake Cula" || name == "Tu Fang"
	vampire = "Definitely a vampire"
end

=begin
Because there are many different variables for many different answers, it can't be limited to a single variable (true or false).
Therefore we create cases to account for different answers and depending on what the answers are we put a different response.
=end

#Continued from line 94
#3.-If he writes sunshine, directly "probably a vampire, if done end loop
if allergy == "done"
	allergy_question = true
elsif allergy == "sunshine"
	allergy_question = true
	vampire = "Probably a Vampire"
else
end 
end


if vampire
	puts vampire	
else
	puts "Results inconclusive"
end

#interview finished, add interview plus 1 so that the loop closes eventually
interviews += 1

end
#loop closed

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."