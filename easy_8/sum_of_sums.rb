=begin
	- write a method that takes an array of numbers
	- have the method return the sum of the sum of each leading
	subsequence of that array

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)

ALGO:
	- define a method that takes an array
	- create a sum variable eqaul to 0
	- iterate over the input array with index
		- add the sum of the current element upto the index
		element to the sum variable => input_array[0..0].sum => input_array[0..1].sum
	- return the sum variable

=end

def sum_of_sums(input_array)
	sum = 0
	input_array.each_index do |index|
		sum += input_array[0..index].sum
	end
	sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35