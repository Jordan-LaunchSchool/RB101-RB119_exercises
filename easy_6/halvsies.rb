=begin
	- write a method that takes an array
	- have the method return two arrays
	that count the first half and the second half of the array respectively
	- if the original array contains an odd number of the elements
	- the middle element should be placed in the first half of the array

	EXAMPLES:
	halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
	[0..1][2..-1] 4 / 2 == 2
	halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
	[0..2][3..-1] 5 / 2 == 2
	halvsies([5]) == [[5], []]
	[0, 1][0, 0]
	halvsies([]) == [[], []]

	ALGO:
		- define a method that takes an array
		- create a first elemet array thats an empty array
		- create a second half elements thats an empty array
		- create an empty result array with first ele and second element
		- if the array size is equal to or less than 1
				- return the result array with the input array as the first element

		- create a middle index that is equal to the array size / 2
		even => 4 / 2 == 2 if the array size is even, minus - 1
		odd => 5 / 2 == 2 
		- return the result 
		



=end

def halvsies(input_array)
	result = []
	middle_index = input_array.size / 2
	middle_index -= 1 if input_array.size.even?
	result[0] = input_array[0..middle_index]
	result[1] = input_array[(middle_index + 1..-1)]
	result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]