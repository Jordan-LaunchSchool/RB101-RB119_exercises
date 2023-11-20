=begin
	- write a method that returns the number of the friday the 13ths in a year given by an argument
	- you may assume that the year is greater than 1752

	EXAMPLES:
	friday_13th(2015) == 3
	friday_13th(1986) == 1
	friday_13th(2019) == 2

	ALGO:
	- require the date class
	- define a method that takes a year
	- create an empty resukt array
	- from the year upto the year + 1
		- if the dats day equal 13 and 
			the day is a friday, add the result to the result array
	- return the count of the result array
=end

require 'date'

def friday_13th(input_year)
	result = []
	start_date = Date.new(input_year)
	end_date = Date.new(input_year + 1)
	start_date.upto(end_date) do |date|
		result << date if date.day == 13 && date.friday?
	end
	result.size
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2