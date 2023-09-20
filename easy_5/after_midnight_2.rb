=begin
	- write a method two methods that each take a time of day
	in 24 hour format
	- return the number of minutes before and after midnight
	- both methods should return a value between 0 and 1439

EXAMPLES:
before_midnight('12:34') == 686


ALGO:
	- define a method that takes a string
	- take the first two digits out of the string, convert to integer
	and save to hours variable, multiply by minutes in an hour
	- take the last two digits out of the string, convert to integer
	and save as minutes
	- add the total time together
	- subtract the total from 1440 to get minutes before midnight

	midnight is 24 hours or 1440 minutes
	12pm is 12 hours earlier or 720 minutes
	12:34 is midday, difference between 2400 and 1234
	^ 754 minutes after midnight (+1440) or (-1440) before midnight

	AFTER MIDNIGHT
	- define a method that takes a string
	- 
=end

MINUTES_IN_ONE_HOUR = 60
MINUTES_IN_ONE_DAY = 24 * MINUTES_IN_ONE_HOUR

def convert_time_to_mintues(time_string)
	hours, minutes = time_string.split(':').map(&:to_i)
	(hours * MINUTES_IN_ONE_HOUR) + minutes
end

def before_midnight(time_string)
	total_mintues = convert_time_to_mintues(time_string)
	minutes_before_midnight = MINUTES_IN_ONE_DAY - total_mintues
	minutes_before_midnight == MINUTES_IN_ONE_DAY ? 0 : minutes_before_midnight
end

def after_midnight(time_string)
	total_mintues = convert_time_to_mintues(time_string) 
	total_mintues == MINUTES_IN_ONE_DAY ? 0 : total_mintues
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0