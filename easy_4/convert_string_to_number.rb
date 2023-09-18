=begin
	- write a method that takes a number as a string
	- convert the string to an integer but do not use the #to_i methods
	
string_to_integer('4321') == 4321
string_to_integer('570') == 570
	
ALGO:
	-	create digits to string CONSTANT hash

	- define the method that takes a string
	- create a sum variable equal to 0
	- iterate over the characters of the input string, return the (integer version of it += the sum) * 10
=end

counter = 0
DIGITS = ('0'..'9').to_a.each_with_object({}) do |num, hash| 
	hash[num] = counter
	counter += 1
end

def string_to_integer(input_string_digits)
	sum = 0
	input_string_digits.each_char do |num|
		 sum = 10 * sum + DIGITS[num]
	end
	p sum
end


p string_to_integer('4321') == 4321
string_to_integer('570') == 570