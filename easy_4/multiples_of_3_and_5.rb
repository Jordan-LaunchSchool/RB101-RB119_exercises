=begin
	- write a method that takes an integer
	- have the method search for allmultiples of 3 and 5 that 
	lie between 1 and `n`
	- have the method return the sum of all the multiples found


ALGO:
	- define a method that takes an integer
	- create an array from one upto the input integer
	- iterate over the array and select elements that are divisible by 3 or 5
	- return the sum of all the selected elements.
=end


def multisum(input_integer)
	(1..input_integer).to_a.select {|num| num % 3 == 0 || num % 5 == 0}.reduce(:+)
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168