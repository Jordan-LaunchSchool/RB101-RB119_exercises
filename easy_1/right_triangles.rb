=begin
	- write a method that takes a positive integer
	- have the method return a right angle triangle of
	stars
	
EXAMPLES:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

rules:
 - each side always has `n` number of starts
	[8, 1], [7, 2], [6, 3] ... [1, 8], [0, 9]
 - 9 lines
 - first line, 8 spaces, 1 star [8, 1]
 - second line, 7 spaces, 2 stars [7, 2]
----------
	- need a counter from 1 upto 9
	- spaces counter from 8, down to 0

ALGO:
	- define a method that takes an integer
	
	- output a blank line
	- start a loop from 1 upto input integer
		- use the block parameter as a star counter
		- output spaces from multiplied by (input integer - star counter)
		- output stars multiplied by star counter
=end

def triangle(input_integer)
	puts ""

	1.upto(input_integer) do |stars_counter|
		puts "#{' ' * (input_integer - stars_counter)}#{'*' * stars_counter}"
	end
end


triangle(9)
