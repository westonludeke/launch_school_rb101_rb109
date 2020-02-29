# Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(num)
  # Two empty arrays
  arr = []
  arr_sum = []
  # Start with a range between 1 and the value of 'num'.
  # Then push each value of the range to the 'arr' array.
  (1..num).each {|n| arr << n}
  # Then remove all of the elements out of the array that aren't either a multiple of 3 or 5.
  arr.select! { |x| (x % 3 == 0) || (x % 5 == 0)}
  # Then add them all together and push to a new array
  arr_sum = arr.sum 
  p arr_sum
end

multisum(3) #== 3
multisum(5) #== 8
multisum(10) #== 33
multisum(1000) #== 234168

=begin ----PSEUDOCODE----
  
1. Take the number (num)

2. Take a range between 1 and num

3. Remove all numbers in the range divisible by 3

4. Then add up all of those numbers together
  
=end

  # (1..20).each do |n| 
  #   p n if % 3 == 0;