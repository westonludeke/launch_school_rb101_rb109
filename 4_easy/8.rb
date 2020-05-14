# Convert a String to a Signed Number!

$hash = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def string_to_signed_integer(str)
  # Start with two empty arrays. One array for the symbols (positive or negative).
  symbol_arr = []
  new_arr = []
  # Convert the number string into an array, where each string character is a separate array element
  arr = str.split('')

  # If the new array includes a value with a symbol (+ or -), remove it from the array and add to new symbol array.
  if arr.include? "-" || "+"
    symbol_arr << arr.shift
  end
  # For each array element of the remaining array (consisting solely of integers), look up the corresponding hash value and add to new array.
  arr.each do |x|
    if $hash.key?(x)
      new_arr << $hash[x]
    end
  end
  # Concactenate integer array to single integer in Ruby. This is without converting to a String.
  converted_integer = new_arr.inject {|a,i| a*10 + i}
  
  # If the symbol array includes a minus or plus symbol, convert the integer to include the sign (i.e. Convert integer to it's corresponding negative value if needed).
  if symbol_arr.include? "-" || "+"
    converted_integer = -converted_integer
  end
  return converted_integer
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

