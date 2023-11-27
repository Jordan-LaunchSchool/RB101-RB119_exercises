=begin
	- write a method that takes an array
	- for each number in the array, find out how many numbers in the array
	are smaller than it. 
	- when counting numbers only count unique values, if a given number occurs multiple times
	in the array, it should only be counted once.
	- return an array containing the amount of numbers that are smaller than the number being counted.

	 
	EXAMPLES:
	p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
	8 => 3, 1 => 0, 1 => 1

p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]

p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

ALGO:
	- define a method that takes an array of integers
	- iterate over the input array, use the return of the block
	to return a new array
		- name the block parameter main number
		- create a counter equal to zero
		
		- iterate over the input array again but with unique values
			- use the block parameter compared number
			- if the compared number is less than the main number
				add one to the counter
		
		- return the counter

	- return the new array

=end

def smaller_numbers_than_current(input_array)
	input_array.map do |main_number|
		numbers_smaller_than_current = 0
		input_array.uniq.each do |compared_number|
			numbers_smaller_than_current += 1 if compared_number < main_number 
		end
		numbers_smaller_than_current
	end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]


p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]

p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]