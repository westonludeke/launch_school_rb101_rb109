# Searching 101

# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

arr = []

puts "Enter the 1st number:"
one = gets.chomp.to_i
arr << one

puts "Enter the 2nd number:"
two = gets.chomp.to_i
arr << two

puts "Enter the 3rd number:"
three = gets.chomp.to_i
arr << three

puts "Enter the 4th number:"
four = gets.chomp.to_i
arr << four

puts "Enter the 5th number:"
five = gets.chomp.to_i
arr << five

puts "Enter the last number:"
six = gets.chomp.to_i

if arr.include? six
  puts "The number appears in #{arr}"
else
  puts "The number does not appear in #{arr}"
end