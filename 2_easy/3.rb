# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percentage = gets.to_f

# Convert percentage number to a decimal. Ex: 15 to .15
tip_percentage_as_decimal = tip_percentage * 0.01
tip = (bill * tip_percentage_as_decimal).round(2)

total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f",tip)}"
puts "The total is $#{format("%.2f", total)}"