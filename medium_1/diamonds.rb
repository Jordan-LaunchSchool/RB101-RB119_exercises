=begin
	- write a method that displays a 4 point diamond in an `n` x `n` grid where `n` is an odd integer that 
	is supplied as an argument. 
	- assume the arg will always be an odd integer

	EXAMPLES:
	diamod(1)

	*

	diamond(3)

	 *
	***
	 *

	diamond(9)
	
    *				' '= 4 (* = 1) => 5 
   ***			' ' = 3 (* = 3) => 6
  *****			' ' = 2 (* = 5) => 7
 *******		' ' = 1	(* = 7) => 8
*********		' ' = 0 (* = 9) => 9
 *******
  *****
   ***
    *

ALGO:
	- define a method that takes an integer
	- create a space_counter eqaul to input integer / 2
	- create an pattern array with an empty array
	- from 1 upto space_counter times
	- name the block parameter star counter
		- add ' ' multipled by space_counter + '*' multipled by star_counter to the pattern array
		- minus one from the space counter
		- add + 2 to the star counter
	- make a variable called last_lines array equal to the pattern_array in reverse

	- add '*' multipled by the input integer to the pattern array
	- add the last_lines array to the back of the pattern array

	- print the pattern array
=end

def diamond(input_integer)
	spaces = input_integer / 2
	star_counter = 1
	diamond_top = []
	1.upto(spaces) do
		diamond_top << (' ' * spaces) + ('*' * star_counter)
		spaces -= 1
		star_counter +=2
	end

	diamond_middle = [('*' * input_integer)]
	diamond_bottom = diamond_top.reverse

	puts ' '
	puts diamond_top + diamond_middle + diamond_bottom
end

diamond(9)