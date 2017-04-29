=begin
Create a method that takes an array of integers and an integer to search for
Return index of item or "nil" if it doesn't exist
DONT use .index
=end

arr = [2, 3, 6, 9, 12]

def search_num(array, number)
  new_hash = {}
	key = 0
	  array.each do |x|
	   new_hash[key] = x
	   key += 1
	  end
	new_hash.key(number)
end

search_num(arr,20)