=begin
Create a method that takes an array of integers and an integer to search for
Return index of item or "nil" if it doesn't exist
DONT use .index
=end

arr = [2, 3, 6, 9, 12]

def search_num(array, number)
  new_hash = {} #Create a hash to store key/value pairs 
	key = 0 
	  array.each do |x|
	   new_hash[key] = x #Our key variable becomes the real key for new_hash, and emulate the index
	   key += 1
	  end
	new_hash.key(number) #method to call out the key of the value
end

search_num(arr,20)

=begin
	
Create a method that generates fibonacci numbers:

1.- Begin an array with 0 and 1
2.- Add 0 and 1 and insert it into the array
3.- Add the last and the second to last index values and insert them into array
4.- Loop that does this the amount of times of the number added to the method

=end

def fibonacci(number)
	fib_array = [0,1]
  repeat =	number-2
  repeat.times do 
		fib_array << fib_array[-1] + fib_array[-2]
	end
	p fib_array
end

fibonacci(6)

#Pseudocode a sorting method that takes an array of integers and sorts them in order

def insertion_sort(array)
  
    sorted_array= [array[0]] #creates an array with the pivot number
    
    array.delete_at(0) #Eliminates pivot number from array
    
    # main code
    for i in array
        final_index = 0
        while final_index < sorted_array.length #While the final index value is smaller than the sorted array length, so that the loop works until final index is equal to the number of values in array 
            if i <= sorted_array[final_index] #if the number being evaluated is smaller than pivot number
                sorted_array.insert(final_index,i)  #insert in the final_index value the number
                break
            elsif final_index == sorted_array.length-1 #if first condition not met, final index and lenght -1 will be equal
                sorted_array.insert(final_index+1,i) #insert the number in index plus one
                break
            end
            final_index+=1
        end
    end
    # output
    sorted_array
end
array = [5, 8, 4,  3]
puts insertion_sort(array)
