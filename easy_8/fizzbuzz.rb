=begin
	- wrute a method that takes two arguments
	- arg1: starting number
	- arg2: ending number
	- print out all number from starting to ending number
	- if the number is divisible by 3, print "fizz"
	- if the number is divisible by 5, print "buzz"
	- if the number is disible by 3 and 5, print "fizzbuzz"

EXAMPLES:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

ALGO:
	- define a method that takes two arguments
	- start a loop from the first number to and including the second number
	- use a block parameter
	- if the number is disible by 3 and 5, make the block parameter
		equal to 'fizzbuzz'
	- if divisible by 5, block parameter equal to buzz
	- if divisible by 3, block parameter equal to fizz
	- print the block parameter

=end

def fizzbuzz(start_num, last_num)
	start_num.upto(last_num) do |current_num|
		case
		when current_num % 5 == 0 && current_num % 3 == 0
			current_num = 'FizzBuzz'
		when current_num % 5 == 0
			current_num = 'Buzz'
		when current_num % 3 == 0
			current_num = 'Fizz'
		end
		puts current_num
	end
end

fizzbuzz(1, 15)