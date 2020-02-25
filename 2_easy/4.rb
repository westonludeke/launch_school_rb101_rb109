# When will I Retire?

# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_until_retirement = (retire_age - age)
retirement_year = current_year + years_until_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_until_retirement} years of work to go!"