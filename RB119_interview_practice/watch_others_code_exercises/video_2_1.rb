=begin
	- write a method that takes a positive integer number
	- have the method rethrn the next bigger number with the same digits
	- if there is no larger number using the digits, return -1

	EXAMPLES:
	12 => 21
	513 => 531
	2017 => 2071
	111 => -1
	531 => -1

	- need to start with the number provided
	- save the input integers digits
	- find the maximum number that make up of digits can create
		- break the number up into digits, sort the number to get the largest number the digits can
	
	- start counting from the next number, so input integer plus one, count upto the max number it could be
		- if the current count has the same digits as the input integers digits then we can 
			return that number
	
	- otherwise if no larger number is found to match, return -1
	
	ALGO:
			- define a method that takes an integer
			- create a variable equal to the digits of the input_integer
			- create a max counter number
				- max counter number are the input digits, sorted largest to smallest
				and then joined and coverted into an integer
			
			- start count from input integer + 1 upto the max counter, use block parameter as current number
				- if the current digits sorted are equal to the input digits sorted
					- return the current number

			
			- return -1

=end

def next_larger_digit(input_integer)
	input_digits = input_integer.digits
	max_counter = input_digits.sort.reverse.join.to_i
	
	(input_integer + 1).upto(max_counter) do |current_number|
		return current_number if current_number.digits.sort == input_digits.sort
	end

	-1
end

