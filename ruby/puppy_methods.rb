=begin
** PUPPY CLASS: Commented out to begin own class **
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	puts "woof" * number
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(number)
  	dog_years = number / 7
  	p dog_years
  end

  def stay(number)
  seconds = 0
  	until seconds == number
  		puts seconds
  		seconds += 1
  	end
  puts "*moves*"
  end

  def initialize
  	print "Intializing new puppy instance..."
  end

end

Funky = Puppy.new

Funky.fetch("ball")
Funky.speak(3)
Funky.roll_over
Funky.dog_years(28)
Funky.stay(5)
=end

#** OTTER CLASS **
#Create two instance methods and an initialize method
class Otter
	def be_cute
		puts "cleans its face"
	end

	def play
		puts "runs and rolls around"
	end

	def initialize
		puts "Initializing new otter instance..."
	end
end


instances = 1
index = 0
otter_array = []
#Creation of loop until we have 50 instances, and put them in data structure
while instances <= 50
	otter_array << "otter" + instances.to_s
	otter_array[index] = Otter.new #
	index += 1
	instances += 1
end

#For each otter instance do the two instance methods
otter_array.each do |otter|
  otter.be_cute
  otter.play
end 
