=begin
	- write a method that takes two arrays
	- have the method return an array that contains all of the
	values from the inputs array but with no duplicates. 

EXAMPLES
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

ALGO:
	- define a method that takes 2 arrays
	- join both arrays together
	- call the uniq method on the result array
	- return the resulting array
=end

# def merge(arr1, arr2)
# 	(arr1 + arr2).uniq
# end

def merge(arr1, arr2)
	arr1 | arr2
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]