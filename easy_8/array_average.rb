=begin
	- write a method that takes an argument, an array containing integers
	- have the method return an the average of all number in the array
	- the array will never be empty and the numbers will always be positive
	
EXAMPLES:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

ALGO:
	- define a method that takes an array
	- create a sum variable equal to zero
	- iterate over the input array
		- add the value current iteration to the sum variable
	- divide the sum by the size of the array
=end

def average(input_array)
	sum = 0
	input_array.each { |num| sum += num }
	sum / input_array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40