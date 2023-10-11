=begin
	- write a method that takes an array as an argument
	- have the method return two arrays, as a pair of nested arrays
	- if the original array cpntains an odd number of elements, the middle
		element should be placed in the first half of the array

		(5 / 2.0) => 3
EXAMPLES:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
 => 4 / 2 => 2 (middle index) => for middle index times => arr.shift => 1

halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

ALGO:
	- define a method that takes an array

	- create an empty array called first half
	- create an empty array called second half have it equal to a duplicate of the input array
	- create a middle index integer that is equal to the array size divided by 2.0 and rounded
	- for the middle index variable times do
		- remove the first element of the array second half array and add it to the first half array variable


	- return a nested result array containing the first half and second half array variables
	
=end

# def halvsies(input_array)
# 	first_half = []
# 	second_half = input_array.dup
# 	middle_index = (input_array.size / 2.0).round
# 	middle_index.times do 
# 		first_half << second_half.shift
# 	end

# 	[first_half, second_half]
# end

def halvsies(input_array)
	middle_index = (input_array.size / 2.0).round
	first_half = input_array[0, middle_index]
	second_half = input_array[middle_index, (input_array.size - middle_index)]
	[first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]