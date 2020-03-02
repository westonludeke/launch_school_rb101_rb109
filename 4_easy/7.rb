# Convert a String to a Number!

def string_to_integer(num)
  #p num
  digits = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

  arr = num.chars
  arr.map! { |key, value| digits.fetch(key, value) }
  #p arr
end

string_to_integer('1234')
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570