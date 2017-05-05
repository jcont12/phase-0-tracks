class Santa
	attr_reader :age, :ethnicity
	attr_accessor :age, :reindeer_ranking, :gender

	def initialize(gender,ethnicity)
			puts "Initializing Santa instance..."
			@gender = gender
			@ethnicity = ethnicity
			@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
			@age = "0"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

#These are getter methods in order to access a specified santa's  attribute

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


genders.length.times do |i|
	santas << Santa.new(genders[i],ethnicities[i])
end

p santas[1].age
p santas[1]. ethnicity
santas[1].celebrate_birthday=(santas[1].age)
p santas[1].age
santas[0].get_mad_at=("Rudolph")
santas[0].gender=("android")
p santas
