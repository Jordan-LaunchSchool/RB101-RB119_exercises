=begin
	- write a method that determines the mean of three scores passed to it
	- have the method return the letter value associated with the grade

ALGO:
	- define a method that takes 3 integers
	- find the average of the integers
	- case the average and return the appropriate grade

=end

def get_grade(score_1, score_2, score_3)
	average_score = (score_1 + score_2 + score_3) / 3
	case 
	when average_score.between?(90, 100)
		'A'
	when average_score.between?(80, 89)
		'B'
	when average_score.between?(70, 79)
		'C'
	when average_score.between?(60, 69)
		'D'
	when average_score.between?(0, 59)
		'F'
	end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"