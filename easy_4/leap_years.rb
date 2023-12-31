=begin

=end



def leap_year?(input_year)
	return input_year % 4 == 0 if input_year < 1752 

	if input_year % 400 == 0
		return true
	elsif input_year % 4 == 0 && input_year % 100 != 0
		return true
	end
	false
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true