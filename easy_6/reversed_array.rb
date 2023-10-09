=begin
	- write a method that takes a an array
	- have the method reverse its elements in place, therefore,
	the original array passed into the method must be mutated.
	- The return value should be the same as the array object

EXAMPLES:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true


ALGO:
	- write a method that takes an array
	
	- create a back counter variable equal to -1
	- create a break index that is equal to half of the array size
	
	- start a loop upto, but not including, half of the array size variable
		- have the first index reference the last index of the array
		and the last index reference the first index of the array

		- minus one from the back index counter

		- return the input array

=end

def reverse!(input_array)
	back_index = -1
	middle_index = (input_array.size / 2)

	(0...middle_index).to_a.each_index do |front_index|
		input_array[front_index], input_array[back_index] = input_array[back_index], input_array[front_index]
		back_index -= 1
	end

	input_array
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true