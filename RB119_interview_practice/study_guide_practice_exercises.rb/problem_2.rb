=begin
	- write a method that takes one argument, an array of integers
	- have the method return the minimum sum of 5 consecutive numbers in the array
	- if the array contains fewer than 5 elements, the method should return nil
		


EXAMPLES:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

ALGO:
		- define a method that takes an array of integers
		- return nil if input_array is less than 5
		- create a minimum sum variable eqaul to input_array sum
		- iterate over the input array with index
			- sub_ array is eqaul to... start at index and take 5 elements  [0, 5]
			- break if sub_array less than 5
			- if the sum of the sub array is less than minimum sum,
				- add the sum to the minimum sum variable

		- if the sub_array is less than 5 return nil
		- return the minimum sum variable

=end

def minimum_sum(input_array)
	min_sum = nil

	input_array.each_index do |index|
		sub_array = input_array[index, 5]
		break if sub_array.size < 5
		min_sum = sub_array.sum if min_sum == nil || sub_array.sum < min_sum
	end
	min_sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10