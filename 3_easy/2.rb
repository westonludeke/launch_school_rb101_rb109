# Arithmetic Integer

# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

puts "Enter the first number:"
one = gets.chomp.to_i

puts "Enter the second number:"
two = gets.chomp.to_i

puts one + two
puts one - two
puts one * two
puts one / two
puts one % two
puts one ** two