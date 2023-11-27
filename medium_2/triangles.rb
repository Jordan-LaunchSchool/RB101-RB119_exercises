=begin
	- write a method that takes 3 arguments, angles of a triangle
	- have the method return a symbol of the correct type of triangle or return invalid

	types:
	- right, one angle of the triangle is 90
	- acute, all three angles of the triangle are less than 90
	- obtuse, one angle is greater than 90

	ALGO:
	- define a method that takes 3 arguments
	- put the arguments into an array
	- if the sum of the array does not eqaul 180, return invalide
	- return :right if the array includes 90
	- return :acute if all angles are less that 90
	- otherewise, return obtuse
=end


def triangle(ang1, ang2, ang3)
	angles_array = [ang1, ang2, ang3]
	return :invalid if angles_array.sum != 180 || angles_array.include?(0)
	return :right if angles_array.include?(90)
	return :acute if angles_array.all? {|angle| angle < 90 }
	:obtuse
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid