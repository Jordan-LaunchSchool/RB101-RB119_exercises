=begin
	- a double number is a number with double digits whose left side digits are exactly the same as
	the right side digits
	- double numbers must be even in length
	- write a method that returns 2 times the number provided as an argument
	unless the argument is a double number, double numbers should be returned as is

EXAMPLES:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

ALGO:
		- define a method called double_number? that takes an integer
		- convert the intput integer into an array of integers with digits and reverse
		- return false if the length of the array is odd?
		- find the middle index, array size / 2
		- does the first half of the array equal the second half of the array? true or false


		- define a method called twice that takes an integer
		- return the input integer if it is a double number?
		- otherwise return the input integer doubled

=end

def double_number?(input_integer)
	digits = input_integer.digits.reverse
	middle_index = digits.size / 2
	digits[0, middle_index] == digits[middle_index..-1]
end

def twice(input_integer)
	double_number?(input_integer) ? input_integer : (input_integer * 2)
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10