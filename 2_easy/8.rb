# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0: "
number = gets.chomp.to_i

puts "Enter 's' to compute the sum or 'p' to compute the product."
user_imput = gets.chomp

if user_imput == 's'
  sum = 0
  addition_range = (1..number)

  addition_range.each do |i|
    sum += i 
  end
  
  puts "The sum of the integers between 1 and #{number} is: #{sum} "
else
  factorial = number.downto(1).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{factorial}."
end