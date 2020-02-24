# Array Average

# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

def average(arr)
  # To get the return value of average as an Integer
  avg = arr.sum / arr.size.to_i
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


def average(arr)
  # To get the return value of average as a Float
  avg = arr.sum / arr.size.to_f
end
