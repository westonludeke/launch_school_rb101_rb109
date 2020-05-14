# Convert a Signed Number to a String!

$hash = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def signed_integer_to_string(num)
  symbol_arr = []
  # If integer is negative, convert to a positive and move minus sign to symbol array.
  if num < 0
    num = -num
    symbol_arr << "-"
  # If integer is positive, add a plus sign to symbol array.
  elsif 
    num > 0
    symbol_arr << "+"
  end

  new_arr = []
  # Convert the integer into an array, where each integer digit is a separate array element
  arr = num.digits.reverse
  # For each array element, look up the corresponding hash key based on it's value. Add hash key to the new array
  arr.each do |x|
    if $hash.value?(x)
      new_arr << $hash.key(x)
    end
  end
  # Concat the two arrays together
  combined = symbol_arr.concat(new_arr)
  # Combine all array elements into one string
  combined.join('')
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'