=begin
	- write a method tha takes an array
	- have the method return a new array, where the first element becomes the last element
	- rotate method are not allowed

EXAMPLES: 
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

ALGO:
	- define a method that takes an array
	- duplicate and save the input array
	- delete the first element from the array
	- add the delete element to the new array]'
	- return the new array

=end

def rotate_array(input_array)
	new_array = input_array.dup
	new_array << new_array.delete(new_array[0])
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true 