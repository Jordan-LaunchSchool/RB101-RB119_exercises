=begin
	- write a method that takes two integers as arugments
	- the first argument is a count
	- the second argument is number of a sequence that the method will create
	- the method should return an array that contains the same number of elements as the count argument
	- the values of each element will be multiples of the starting number
	- assume that the count argument will always have a value of 0 or greater
	- while starting number can be an integer value, if the count is 0, an empty array should be returned

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]

ALGO:
	- define a method that takes two integers, count and sequence
	- create an empty result array
	- create a sum variable equal to one
	- run a loop for the length of the count variable
		- add the sum to the array, multiplied by the sequence variabled to
		the result array
	- return the result array
=end

def sequence(count, seq)
	result = []
	sum = 0
	count.times do
		result << sum += seq
	end
	result
end


# def sequence(count, first)
#   (1..count).map { |value| value * first }
# end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []