=begin
	- write a method that takes two arguments, a integer and a boolean
	- have the method calculate the bonus for a given salary
	- if arg 2 is true, the bonus should be half the salary
	- if its false, the bonus should be 0

EXAMPLES:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

ALGO:
	- define am ethod that takes an integer and boolean
	- if the input integer is true, return half of the salaray
	- if false, return 0
=end

def calculate_bonus(input_integer, pay_bonus)
	pay_bonus ? (input_integer / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
