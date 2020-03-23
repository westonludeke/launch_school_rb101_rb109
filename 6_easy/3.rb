# Fibonacci Number Location By Length

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

=begin ---- PSEUDOCODE ----

1. Given a number 'num'
2. Run the Fibonacci sequence until it returns an integer with the same amount of characters in 'num'

=end


=begin ---- Weston's Notes ------
  
1. This is a very difficult problem. My code is ugly as hell but it runs, albiet incredibly slowly.
2. I didn't follow instructions exactly because it was very hard.
3. When increasing the 'length' at 10 and above, the program becomes very slow. According to LS notes it seems to be because of Ruby not being well equipped to deal with the level of recursion required. 

=end


length = 2
n = 1
# array must begin with a 0 because Fibonacci index starts at 1 instead of 0. Also, a 1 because there's two 1's in Fibonacci
arr = [0,1]

def fibonacci(n)
  if n == 1
    1
  elsif n == 2
    1
  else 
    fibonacci(n-1) + fibonacci(n-2)
  end
end

# Calling Fibonacci method 'n' number of times
fibonacci(n)

# getting the length
num_length = Math.log10(n).to_i + 1

while num_length <= length do
  # Increment the Fibonacci number we want returned
  n = n + 1
  fib = fibonacci(n)
  # Push to array
  arr << fib

  fib_length = Math.log10(fib).to_i + 1
  if fib_length == length
    # if the array includes the returned value of 'fib', get the index of the array value
    if arr.include? fib 
      p arr.index { |x| x == fib } 
    end
  end
  # if the length equals the original length, end the loop
  break if fib_length == length
end






