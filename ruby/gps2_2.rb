# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Split user input into an array
# Push each element in the array into a hash
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]



def create_list(groceries)
	grocery_list_hash = {}
	index = 0
	groceries = groceries.split(" ")
	until index == groceries.length
	grocery_list_hash[groceries[index]] = 1
	index += 1
	end
	return grocery_list_hash
end 

# Method to add an item to a list
# input: list(hash), item name(string), and optional quantity(integer)
# steps: take item name and quantity and push to list. As key and value
# output: updated list

def add_item(hash, item, quantity)
	  hash[item] = quantity
	  return hash
end

# Method to remove an item from the list
# input: item name
# steps: check if item name is in list. If item is in list, remove item from the list. If not, ask user for a valid item
# output: updated list

def remove_item(hash,item)
	if hash["#{item}"] == hash["#{item}"]
		hash.delete("#{item}")
	else puts
		"Invalid item"
	end
	return hash
end
# Method to update the quantity of an item
# input: item name, integer
# steps: check if item name is in list. If item is in the list, update the quantity. If not, ask user for a valid item
 # output: updated list

 def modify_item(hash,item,value)
	if hash["#{item}"] == hash["#{item}"]
		hash["#{item}"] = value
	else puts
		"Invalid item"
	end
	return hash
end

 # Method to print a list and make it look pretty
 # input: list, item, quantities
 # steps: iterate over list
 # output: item name and its quantity

def print_list(hash)
  hash.each do |item, quantity|
    puts item + " : " + quantity.to_s
  end 
end