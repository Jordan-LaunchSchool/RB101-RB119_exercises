=begin
	- write a method that takes the length of 3 side of a triangle
	- have the method return a symbol, :equilateral, :isosceles, :scalene
	or :invalid
	- in order to be a valid triangle, the sum of the lengths of the two shortest sides
	must be greater than the length of the longest side
	of the longest side. 
	-  and have lengths greater than 0, if if either of these condition arent satisfied the triangl
	is invalid

	-equilateral All 3 sides are of equal length
 - isosceles 2 sides are of equal length, while the 3rd is different
	- scalene All 3 sides are of different lengths

	ALGO:
		- define a method that takes an array
		- sort the input array, save the last element as longest side
		- save element 1 and element 2 as short side 1 and short side 2, # save in line

		- short 1 and short side 2 combined are less than the longest side
		- or if the array includes 0
			- return invalid

		- if longest side count is 3 return 
				- return equalateral
		- if loongest count is 2, return isosceles
		 - otherwise return isosceles

=end


def triangle(side1, side2, side3)
	measurments = [side1, side2, side3]
	short_side_1, short_side_2, longest_side = measurments.sort
	
	return :invalid if (short_side_1 + short_side_2) < longest_side || short_side_1 == 0
	return :equilateral if measurments.count(longest_side) == 3
	return :isosceles if measurments.count(longest_side) == 2
	:scalene

end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid