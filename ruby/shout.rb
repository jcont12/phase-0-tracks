p Math.sqrt(8)

#Create a Shout module that can do two shouting methods
module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

	def yell_happily(words)
		words + "!" + ":D"
	end
end

#Create two clases that might shout, and include on each the shout method created
class Myself
	include Shout
end

class Coach
	include Shout
end

#Create instances of classes and test work
myself = Myself.new
p myself.yell_angrily("What??")

coach = Coach.new
p coach.yell_happily("Great Goal!!")
