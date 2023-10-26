=begin
	input_integer => 735291 => 6 digits => 5 rotations is the maximum
	first rotation (no numbers fixed):  352917
	second rotation (first number fixed): 329175
	third rotation (second number fixed): 321759
	fourth rotation (third number fixed): 321597
	fifth rotation (fourth number fixed): 321579 

	ALGO:
	- define a method that takes an integer
	- begin a loop from the input digit size down to 1
	- use the block parameter as a counter
	- have the intput integer reference the return value of the rotate right most digit method using the input integer as arg1
	and the counter as arg2
	- return the input integer
=end


def rotate_rightmost_digits(input_digit, last_index)
	number_array = input_digit.to_s.chars
	number_array << number_array.delete_at(-last_index)
	number_array.join.to_i
end

def max_rotation(rotate_integer)
	rotate_integer.digits.size.downto(1) do |counter|
		rotate_integer = rotate_rightmost_digits(rotate_integer, counter)
	end
	rotate_integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845