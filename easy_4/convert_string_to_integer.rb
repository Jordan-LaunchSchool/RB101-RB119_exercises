=begin
	- write a method that takes a string of digits and returns the appropriate number as an integer
	- the string may lead with '+' or negative '-'. 
	

EXAMPLES:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

ALGO:
	- define a method that takes a string of digits
	- if the first character is `-`, remove `-`
		and call the string_to_integer method with a negative
	- if the first character is a `+` remove the character and call
		the string to integer method
=end

def initialise_digit_hash
	counter = 0
	('0'..'9').to_a.each_with_object({}) do |num, hash| 
		hash[num] = counter
		counter += 1
	end
end

def string_to_integer(input_string_digits)
	sum = 0
	input_string_digits.each_char do |num|
		 sum = 10 * sum + DIGITS[num]
	end
	sum
end

def string_to_signed_integer(input_string)
	if input_string[0] == '-'
		-string_to_integer(input_string[1..-1])
	elsif input_string[0] == '+'
		string_to_integer(input_string[1..-1])
	else
		string_to_integer(input_string)
	end
end

DIGITS = initialise_digit_hash

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100