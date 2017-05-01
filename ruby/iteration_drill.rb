# Array Drills
=begin
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |supplies|
 p supplies
 p "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

#NOTE: Since it does not ask us to iterate..:
zombie_apocalypse_supplies[0] = "batteries"
zombie_apocalypse_supplies[1] = "binoculars"
zombie_apocalypse_supplies[2] = "CB radio"
zombie_apocalypse_supplies[3] = "compass"
zombie_apocalypse_supplies[4] = "hatchet"
zombie_apocalypse_supplies[5] = "rations"
zombie_apocalypse_supplies[6] = "shotgun"
zombie_apocalypse_supplies[7] = "water jug"

p zombie_apocalypse_supplies


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def search(array,item)
	found = []
	array.each do |supplies|
		if supplies == item
			found << "yes"
		end
	end
	if found[0] == "yes"
		puts "item in backpack"
	else
		puts "not in backpack"
	end
end


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

array = []

zombie_apocalypse_supplies.each do |supply|
	array << supply
end

zombie_apocalypse_supplies = []

index = 0

until index == 5

zombie_apocalypse_supplies<< array[index] 
index += 1
end 

p zombie_apocalypse_supplies



# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

zombie_apocalypse_supplies.concat(other_survivor_supplies)

p zombie_apocalypse_supplies

# ----
=end 
# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |key,value|
	puts "#{key} - #{value}"
	p "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals_less_2000 = {}

extinct_animals.each do |key,value|
	if value < 2000
		extinct_animals_less_2000[key] = value
	end
end

p extinct_animals_less_2000


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |key,value|
	new_value = value - 3
  extinct_animals[key] = new_value
end

p extinct_animals


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def search(array,animal)
  found = []
	array.each do |key,value|
		if key == animal
		found << "yes"
		end 
	end 
		if found[0] == "yes"
		  puts "#{animal} in list"
		else 
		  puts "#{animal} not in list"
	  end
end 

list = 0 
index = 0
until list == 3

animals = ["Andean Cat", "Dodo", "Saiga Antelope"]


search(extinct_animals, animals[index])
index += 1
list += 1
end 

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

# I KNOW the method is .shift but only works for first key-value pair, had to delete and reassign until my desired object became the first in list.
extinct_animals.delete("Tasmanian Tiger")
extinct_animals["Tasmanian Tiger"] = 1936
extinct_animals.delete("Eastern Hare Wallaby")
extinct_animals["Eastern Hare Wallaby"] = 1890
extinct_animals.delete("Dodo")
extinct_animals["Dodo"] = 1662
extinct_animals.delete("Pyrenean Ibex")
extinct_animals["Pyrenean Ibex"] = 1936

extinct_animals.shift
