=begin
	- write a method that takes a year as an input
	- have the method return the century
	- the return value should be a string with century number the ends with the correct suffix
	- new centuries begin in years that end with 01, so 1901-2000 comprimise the 20th century

EXAMPLES:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

[1st, 2nd, 3rd, else th]

ALGO:
	note - divide by 100 and plus 1 unless the last two digits are 00

	- define a method that takes an integer
	- divide the input integer by 100,
	- add 1 unless the last two digits of the integer are 00
	- convert the centrury to a string

	- case the last character of the string
	- if the last character is 1
			- add 'st'
			....
=end

def century_suffix(input_century)
	suffixes = %w(th st nd rd)
	last_digit = input_century[-1].to_i

	return suffixes[0] if ['11', '12', '13'].include?(input_century[-2, 2])

	return suffixes[last_digit] unless suffixes[last_digit].nil?
	'th'
end

def century(input_year)
	calculated_century = (input_year / 100) 
	calculated_century = calculated_century + 1 unless input_year.to_s[-2, 2] == '00'
	calculated_century = calculated_century.to_s

	calculated_century + century_suffix(calculated_century)
end



p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

