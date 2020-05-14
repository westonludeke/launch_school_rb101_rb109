# Sum Square - Square Sum

# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

def sum_square_difference(num)
  # First half of the equation
  # Get a range between 1 and num and add to array
  arr = (1..num).to_a
  # Add each array element together
  arr = arr.inject(0){|sum,x| sum + x}
  # Get the square of the sum
  first_half = arr ** 2

  # Second half of the equation
  # Get a range between 1 and num and add to array
  second_arr = (1..num).to_a
  # Sqaure each array element and modify array
  second_arr.map! do |x|
    x**2
  end
  # Sum each array item
  second_half = second_arr.inject(0){|sum,x| sum + x}

  # Take the first half equation's results and subtract out the second half
  first_half - second_half
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

=begin
  
----PSEUDOCODE----

# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

0. Given an integer (num)
1. Create a range of numbers between 1 and num
2. Sum all of the numbers in the range together
3. Square the sum to get the first half
4. Get the square of each number in the range
5. Add the new squared numbers together to get the second half
6. Take the first half and subtract the second half
  
=end