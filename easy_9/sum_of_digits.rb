=begin
	- write a method that takes an integer
	- have the method return the sum of it digits

ALGO:
	- define a method that takes an integer
	- use the digits method to split the integers into an array
	- return the sum of the integers

=end

# def sum(input_integer)
# 	input_integer.digits.sum
# end

def sum(input_integer)
	input_integer.to_s.split('').map(&:to_i).sum
end




puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45