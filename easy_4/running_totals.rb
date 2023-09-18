=begin
	- write a method that takes an array
	- have the method return an array with the same number of elements
	- have each element as the running total of the original array

EXAMPLES:
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
sum = 0
sum += element

=end

def running_total(input_array)
	sum = 0
	input_array.map {|num| sum += num }
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []