=begin
	- write a method that takes an integer
	- have the method return a list of the digits in the number

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

ALGO:
	- define a method that takes an integer
	- call digits on the array
	- call reverse on the arrya to have the array
	ordered correctly

	SECOND WAY
	- define a method that takes an integer
	- create an empty result array
	- until the input integer = 0
		- input integer divided by 10 and add the remainder to the result array
	- return the result array
=end

def digit_list(input_integer)
	result = []
	until input_integer <= 0
		input_integer, remainder = input_integer.divmod(10)
		result.prepend(remainder)
	end
	result
end

# def digit_list(input_integer)
# 	input_integer.digits.reverse
# end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true