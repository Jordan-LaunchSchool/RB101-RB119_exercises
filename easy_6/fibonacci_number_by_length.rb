=begin
	- write a method that calculates and return the index 
	of the first fibonacci number that has the number of 
	digits specified as an argument


EXAMPLES: 
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

ALGO:
	- write a method that takes an integer
	- create a fibonacci sequence with an array containg [1, 1]
	- begin an index counter with the value 2

	- begin a loop that breaks when the last fibonacci number
		has as many digits as the input integer 
			=> break when the current fib number, as a string == input integer
	- create a variable called current fib number that is equal to 
	to the last two digits of the fib sequence
	- add the current fib number to fib sequence array
	- add + 1 to the index counter

	- return the index counter

=end

def find_fibonacci_index_by_length(input_integer)
	fibonacci_sequence = [1, 1]
	index_counter = 2

	loop do 
		current_fibonacci_number = fibonacci_sequence[-2, 2].sum
		fibonacci_sequence << current_fibonacci_number
		index_counter += 1
		break if current_fibonacci_number.to_s.size == input_integer
	end

	index_counter
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847