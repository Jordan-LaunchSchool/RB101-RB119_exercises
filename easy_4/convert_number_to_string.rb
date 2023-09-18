=begin
	- write a method that takes an integer and converts it to a string

EXAMPLES:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

ALGO:
	- define a method that takes an integer
	- create an array with where each index is the coinciding array
	- keep dividing the number by 10 and match the remainder to the correct string digit from the array
	return the result and join it

SECOND WAY:
	- define a method that takes an integer
	- create a string array with digits
	- call digits on the input integer and reverse it
	- iterate over the integer and return the correct string digit
	from the array
	- join the array and return it


=end


def integer_to_string(input_integer)
	string_digits = %w(0 1 2 3 4 5 6 7 8 9)
	result = ''
	loop do
		input_integer, remainder = input_integer.divmod(10)
		result.prepend(string_digits[remainder])
		break if input_integer == 0
	end
	result
end

# def integer_to_string(input_integer)
# 	string_digits = %w(0 1 2 3 4 5 6 7 8 9)
# 	input_integer.digits.reverse.map {|num| string_digits[num]}.join
# end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
