# Multiplicative Average

# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

def show_multiplicative_average(arr)
  multiply = arr.inject(:*).to_f
  avg = multiply / arr.length
  "%.3f" % ((avg*1000).floor / 1000.0)
end

puts show_multiplicative_average([3,5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])