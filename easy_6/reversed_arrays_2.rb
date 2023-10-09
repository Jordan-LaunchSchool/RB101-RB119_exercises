=begin
	- write a method that takes an array
	- have the method return a new array
	- the new array should contain elements 
	of the first array with its elements returned in reversed
	- do not modify the original list
	
EXAMPLES:
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

ALGO:
		- define a method that takes an array
		- create a result array
		- create a back index eqaul to -1
		- begin a loop for as many times as the input arrays size
			- add the last indexed element to the result array
		
		- return the result array

=end

def reverse(input_array)
	result = []
	back_index = -1

	input_array.size.times do
		result << input_array[back_index]
		back_index -= 1
	end
	result
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]  