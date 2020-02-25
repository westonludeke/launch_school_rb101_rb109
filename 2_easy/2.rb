# How big is the room?

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

puts "Enter the length of the room in meters:"
length = gets.chomp()

puts "Enter the width of the room in meters:"
width = gets.chomp()

area = (length.to_f * width.to_f).round(2)
square_feet = (area * 10.7639).round(2)
puts "The area of the room is #{area} square meters (#{square_feet} square feet)."