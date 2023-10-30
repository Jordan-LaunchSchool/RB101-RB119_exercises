=begin
	ALGO:
	- define a method that takes an integer
	- create a fib sequence equal begining with [1, 1]
	- begin a loop that break when the array size is the size of the input integer
		- push the result of the second last element + the last element to the fib
		sequence 
	
	- return the last number of the fib sequence
=end


# def fibonacci(fib_number)
# 	n1 = 1
# 	n2 = 1
# 	counter = 2
# 	until counter >= fib_number
# 		n3 = n1 + n2
# 		n1 = n2
# 		n2 = n3
# 		counter += 1
# 	end
# 	n3
# end

# def fibonacci(fib_number)
# 	fib_sequence = [1, 1]
# 	until fib_sequence.size >= fib_number
# 		fib_sequence << fib_sequence[-2] + fib_sequence[-1]
# 	end
# 	fib_sequence[-1]
# end

def fibonacci(fib_number)
	first_num, last_num = [1, 1]
	3.upto(fib_number) do
		first_num, last_num = [last_num, (first_num + last_num)]
	end
	last_num
end	

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501