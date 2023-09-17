=begin
	- print all odd numbers from 1 to 99 with each number on a seperate line

	

=end

(1..99).to_a.each {|num| puts num if num.odd?}