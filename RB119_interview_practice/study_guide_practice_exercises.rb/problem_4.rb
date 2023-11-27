=begin
	- write a method that takes an array of integers
	- have the method return two numbers that are the closest in value

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]

p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
19
[25] => 6
[32] => 13
...
25											
[19] => 6								
...											
[27] => 2 => [25, 27]

Notes:
placeholder, current iteration to compare, overall smallest difference, 
need index of both to skip on same index

ALGO:
	- define a method that takes an array of integers
	- create a variable named smallest_difference
	- create an empty array as result
	- iterate over the array with index
		- iterate over the array with index again
			- next iteration if index 1 == index 2
			- create a variable and save the current difference between number on and number 2
			- if the current difference is less than the smallest difference
				- save the current difference as the smallest difference
				- result array should be equal to [num1, num2]
	- return the result array
=end

def closest_numbers(input_array)
	smallest_difference = input_array.sum
	result = []

	input_array.each_with_index do |num_1, index_1|
		input_array.each_with_index do |num_2, index_2|
			next if index_1 == index_2
			current_difference =(num_1 - num_2).abs
			if current_difference < smallest_difference
				smallest_difference = current_difference
				result = [num_1, num_2]
			end
		end
	end
	result
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]