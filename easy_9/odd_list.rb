=begin
	- write a method that returns an array that contains every other element of an array
	that is passed in as an argument
	- values are 1st, 3rd, 5th

[0, 2, 4]

ALGO:
	- define a method that takes an array
	- iterate over the input array with index
		- select the element if its index is even
	- return the new array

=end


def oddities(input_array)
	input_array.select.with_index {|_, index| index.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]