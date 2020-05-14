# Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

$hash = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def integer_to_string(num)

  new_arr = []
  # Convert the integer into an array, where each integer digit is a separate array element
  arr = num.digits.reverse
  # # For each array element, look up the corresponding hash key and add to new array
  arr.each do |x|
    if $hash.value?(x)
      new_arr << $hash.key(x)
    end
  end
  # combine all array elements into one string
  new_arr.join('')

end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
