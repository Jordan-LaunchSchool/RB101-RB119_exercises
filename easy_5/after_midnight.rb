=begin
	- write a method that takes an integer
	- the integer represents minutes before and after midnight
	- before midnight if it is negative and after midnight if it is positive
	-

EXAMPLES:
time_of_day(800) == "13:20"

ALGO:
	- add a constant, minutes in an hour
	- add a constant, minutes in a day

	- write a method that takes an integer
	- if the input_minutes are greater than the minutes in one day, reduce the input minutes 
		by minutes in th day until below mintues in one day
	- divide the input integer by 60, save the hours and the minutes (the minutes are not in minutes yet)
	- output a string, with the hours and minutes
	- round the minutes to 2 decimal places


=end
MINUTES_IN_ONE_HOUR = 60
MINUTES_IN_ONE_DAY = 60 * 24

def standardise_time(input_minutes)
	until input_minutes < MINUTES_IN_ONE_DAY
		input_minutes -= MINUTES_IN_ONE_DAY
	end
	until input_minutes >= 0
		input_minutes += MINUTES_IN_ONE_DAY
	end
	input_minutes
end

def time_of_day(input_minutes)
	input_minutes = standardise_time(input_minutes)
	hours, minutes = input_minutes.divmod(MINUTES_IN_ONE_HOUR)

	"#{format('%02d', hours)}:#{format('%02d', minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
