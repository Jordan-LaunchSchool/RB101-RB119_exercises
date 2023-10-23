=begin
	- write a method that takes two arguments
	- arg1 is an integer
	- arg2 is a count of the LAST digits to be rotated
	- rotating just one digit results in the orginal number being return

EXAMPLES:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
[7, 3, 5, 2, 9, 1] => last 2 digits => [7, 3, 5, 2, 1, 9] => index[-1], index[-2]


rotate_rightmost_digits(735291, 3) == 735912
....2, 9, 1] => last 3 digits => ...9, 1, 2] => index[-3] becomes index[-1]
slice from the required array. shift the first element out and add it to the back of the array
rejoin to the main array and return it as an integer

rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

ALGO:
	- define a method that takes an integer
	- turn the integer into an array by converting to string and then spliting
	- slice! from the negative of the count argument to the last element, save  the sliced portion
	- shift the first element and add to the back of the sliced array
	- rejoin with the original digit array and return an as integer (convert to a string using map to_s, and then join, convert to integer)
	-
=end

def rotate_rightmost_digits(input_digit, last_index)
	number_array = input_digit.to_s.chars
	number_array << number_array.delete_at(-last_index)
	number_array.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917