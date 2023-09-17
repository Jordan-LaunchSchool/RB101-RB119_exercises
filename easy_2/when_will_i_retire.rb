=begin
	- write a program that displays when the suer will retire and how many
	years they have to work


PROMPTS:
	What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

ALGO:
	- prompt for age
	- save age
	- prompt what age to retire

	- get year
	- add the retirement age to the year
	- prompot how many more year of work (retirement - age)


=end


puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year

puts "It's #{current_year}. You will retire in #{current_year + retirement_age}"
puts "You only have #{retirement_age - age} years of work to go!"

