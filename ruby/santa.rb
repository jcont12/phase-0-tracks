class Santa
	attr_reader :name, :age, :ethnicity
	attr_accessor :reindeer_ranking, :gender 

	def initialize(gender,ethnicity,age)
			puts "Initializing Santa instance..."
			@gender = gender
			@ethnicity = ethnicity
			@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
			@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end


#Setter methods
def celebrate_birthday=(new_age)
	  @age = new_age.to_i + 1
	end


	def get_mad_at=(name)
	    reindeer_index = @reindeer_ranking.index(name)
	    insert_at = @reindeer_ranking.length - 1
	  @reindeer_ranking.insert(insert_at,@reindeer_ranking.delete_at(reindeer_index) )
	end

end 



santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese", "Prefer not to say", "mystical creature (unicorn)","N/A"]
age = [] #Will be filled by 0 to 140 for random selection


genders.length.times do |i|
	santas << Santa.new(genders[i],ethnicities[i],age[i])
end

#set 140 ages
140.times do |i|
  age << i + 1
end

#Do 100 santas with varying genders, ethnicities and ages
100.times do 
  santas << Santa.new(genders.sample, ethnicities.sample, age.sample)
end 



#----TEST RESULTS-----
p santas[1].age
p santas[1]. ethnicity
santas[1].celebrate_birthday=(santas[1].age)
p santas[1].age
santas[0].get_mad_at=("Rudolph")
santas[0].gender=("android")
p santas
