=begin
	- write a method that takes an array of integers
	- have the method multiply all numbers together
	- have the method dive the result by the number of elements in the array
	- have the method return the result rounded to 3 decimal places
	- assume the array is not empty

EXAMPLES:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

ALGO:
	- define a method that takes an array
	- multiply all of the numbers together using reduce
	- divide the result result by the size of the array
	- output a string containing the result formatted to 3 decimal places

	format('%.3f', number)


=end

def show_multiplicative_average(input_array)
	result = input_array.reduce(:*) / input_array.size.to_f
	puts "=> The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17])