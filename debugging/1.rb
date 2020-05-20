# Countdown

# Our countdown to launch isn't behaving as expected. Why? Change the code so that our program successfully counts down from 10 to 1.

# counter = 10

# def decrease(counter)
#   counter -= 1
# end

# 10.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

=begin
 
[not necessary] 0. It seems like the 'counter' variable should be above the decrease method, at first glance. 
1. Next, we need to reassign the counter variable to the new number that the decrease(counter) method returns

=end

# FURTHER EXPLORATION / REFACTORING:

counter = 10

def decrease(counter)
  counter -= 1
end

until counter == 0
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'