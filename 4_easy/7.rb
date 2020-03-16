# Convert a String to a Number!

def string_to_integer(string)
  digits = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}
  # This puts each character of the String into an Array, where each character is a separate String value
  # arr = num.chars
  # # This converts each String value of the array to an integer, pulling from the Digits hash
  # arr.map! { |key, value| digits.fetch(key, value) }
  # # This pulls each integer value out of the array and returns it separately
  # arr.select! {|x| x}
  # puts arr

  # I failed with my code above to solve the problem.
  # ...but I found this good solution via StackOverflow: https://stackoverflow.com/a/40755501/5137112
  total = 0
  num_array = string.split("").reverse
  num_array.length.times do |i|
   num_value = digits[num_array[i]]
   num_value_base_ten = num_value * (10**i)
   total += num_value_base_ten
 end
 return total
end

p string_to_integer('1234')
