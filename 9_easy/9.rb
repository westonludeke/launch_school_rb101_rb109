# Grade book

# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

def get_grade(score_one, score_two, score_three)
  arr = []
  arr << score_one
  arr << score_two
  arr << score_three

  avg = arr.inject{ |sum, el| sum + el }.to_f / arr.size

  if avg <= 100 && avg >= 90
    p 'A'
  elsif avg < 90 && avg  >= 80
    p 'B'
  elsif avg < 80 && avg >= 70
    p 'C'
  elsif avg < 70 && avg >= 60
    p 'D'
  else
    p 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"