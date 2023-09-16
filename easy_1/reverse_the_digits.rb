=begin
	- write a method that takes a positive integer as an argument
	- have the method return that number with the digits reversed
=end

def reversed_number(input_integer)
	input_integer.digits.join.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1