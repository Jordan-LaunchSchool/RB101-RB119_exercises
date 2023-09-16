=begin
	- write a method that takes an one argument, an integer
	- have the method output true or false if the absolute value is odd
	- the input integer maybe positive, negative or zero
	- you cannot use the odd? even? methods

ALGO:
	- define a method that takes an integer
	- see if the absolute version of the number is divisible by 2 if it is, return the opposite boolen
	as this will be an even number and we want to know if it is odd.
=end

def is_odd?(input_integer)
	input_integer.abs % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true