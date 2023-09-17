=begin
	- write a program that asks the user for the length and width of a room
	- have the program display the area in both square meters and square feet
	
=end

puts "Enter the length of the width of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = length * width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{format('%.2f', square_feet)} square feet)"