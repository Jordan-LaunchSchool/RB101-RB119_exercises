=begin
	- write a method that combines two arrays
	- have the method return an array that contians all elements from both array arguments
	- you may assume both input arrays are non-empty and have the same amount of elements

EXAMPLES:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

ALGO:
	- define a method that takes two arrays
	- use the zip method to combine the arrays
	- use the flatten method to flatten the nested arrays and return the result
=end

def interleave(array_1, array_2)
	array_1.zip(array_2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']