# Convert String to a Number
# (without using 'String.to_i')

$hash = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def string_to_integer(str)
  new_arr = []
  # Convert the number string into an array, where each string character is a separate array element
  arr = str.split('')

  # For each array element, look up the corresponding hash value and add to new array
  arr.each do |x|
    if $hash.key?(x)
      new_arr << $hash[x]
    end
  end
  # Concactenate integer array to single integer in Ruby. This is without converting to a String.
  return new_arr.inject {|a,i| a*10 + i}

end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


# Notes: https://stackoverflow.com/questions/7360954/how-to-concatenate-integer-array-to-single-integer-in-ruby

