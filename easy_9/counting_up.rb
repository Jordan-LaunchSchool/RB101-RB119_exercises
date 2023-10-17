=begin
	- write a method that takes an integer
	- have the method return an array of integers in sequence
	between 1 and the argument
	- you may assume the argument will always be greater than zero

ALGO:
	- define a method that takes an integer
	- create an empty result array
	- from 1, upto input integer
		- add to block parameter to the result array
	- return the result array
=end


def sequence(input_integer)
	(1..input_integer).to_a.map {|num| num }
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]