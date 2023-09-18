=begin
	- write a method that takes an integer positive or negative
	- have the convert 

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

DATA:
	input: integer

	output: string with correct prefix


=end

def signed_integer_to_string(input_integer)
	return '0' if input_integer == 0
	string_digits = %w(0 1 2 3 4 5 6 7 8 9)
	result = ''
	prefix = input_integer > 0 ? '+' : '-'

	loop do
		input_integer, remainder = input_integer.abs.divmod(10)
		result.prepend(string_digits[remainder])
		break if input_integer == 0
	end

	prefix + result
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'