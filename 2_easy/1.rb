# How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

def age
  teddy_age = rand(20..200)
  puts "Teddy is #{teddy_age} years old!" 
end

age