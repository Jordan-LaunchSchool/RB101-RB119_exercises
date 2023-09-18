=begin
	- write a program that takes 6 numbers from the user
	- have the program print out a message that describes 
	whether or not the 6 number appeasrs amongst the 5

ALGO:
	- create an empty array, first five numbers
	- prompt for the 5 numbers
	- take the 6th number and see if it is included in the number array
		- if it is return that it appears in the array
		- if it doesnt say that it does not appear in the arrat
=end

first_five_numbers = []

def prompt(msg)
	puts "==> " + msg
end

prompt("Enter the 1st number:")
first_five_numbers << gets.chomp.to_i

prompt('Enter the 2nd number:')
first_five_numbers << gets.chomp.to_i

prompt('Enter the 3rd number:')
first_five_numbers << gets.chomp.to_i

prompt('Enter the 4th number:')
first_five_numbers << gets.chomp.to_i

prompt('Enter the 5th number:')
first_five_numbers << gets.chomp.to_i

prompt('Enter the last number:')
last_number = gets.chomp.to_i

if first_five_numbers.include?(last_number)
	prompt("The number #{last_number} appears in #{first_five_numbers}.")
else
	prompt("The number #{last_number} does not appear in #{first_five_numbers}.")
end