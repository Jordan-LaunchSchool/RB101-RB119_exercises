=begin
	- write a method that takes two arrays
	- have the method return a new array that contains the product of every
	pair of numbers that can be formed between the elements of the two arrays.
	- the result should be sorted by increasing values

EXAMPLES:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


ALGO:
	- write a method that takes an array
	- create an empty result array
	- iterate over array 1
		- iterate over array 2
		- add the result of element 1 multiplied by element 2
	- return the array result array sorted

=end

def multiply_all_pairs(array_1, array_2)
	result = []
	array_1.each do |num1|
		array_2.each do |num2|
			result << num1 * num2
		end
	end
	result.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]