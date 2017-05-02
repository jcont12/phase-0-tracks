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
end

Funky = Puppy.new

Funky.fetch("ball")
Funky.speak(3)
Funky.roll_over
Funky.dog_years(28)
Funky.stay(5)