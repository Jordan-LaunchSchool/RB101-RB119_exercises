=begin
	- return one if n is 1
	- return one if the input is 2
	input: 4
	- n1 = 1
	- n2 = 1
	- fib_number = 3
	- break if fib_number == input_integer
	- n3 = n1 + n2
	- n1 = n2
	- n2 = n3
	- fibnumber += 1

	
	- n1 = n2
	- n2 = n3
	- n3 = n1 + n2
=end

def fibonacci(nth)
	return 1 if nth <= 2
	fibonacci(nth - 1) + fibonacci(nth - 2)
end


p fibonacci(40)