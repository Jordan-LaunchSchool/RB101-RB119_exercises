=begin
	- write a method that takes an integer, the nth fibonacci number
	- have the method return the last digit of the fionacci number 	


ALGO:
	- define a method that takes an integer, the `nth` fibonacci number
	- create a variable called first number, equal to the first element of the array 1
	- create a variable called second number that is equal to the second element of the array
	- from 3 upto the `nth` number
		- make the first number equal to the last number of an array
		- make last number equal to the last number plus the first number

	- conver the last number into a string, select the last character to convert to integer and return
	this value
=end

def fibonacci_last(nth)
	last_2 = [1, 1]
	3.upto(nth) do
		last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
	end
	last_2.last
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789)