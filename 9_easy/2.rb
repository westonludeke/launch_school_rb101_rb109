# Double Doubles

# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

def twice(num)
  # converts to string
  str = num.to_s
  # convert string to array
  arr = str.split('')
  # finds the number of the array length by 2
  take_var = arr.length / 2
  # gets the left half of the array
  arr_left = arr.take(take_var)
  # gets the right half of the array
  arr_right = arr.slice(take_var..-1)
  # combines the two array halves together
  combined_num = arr_left.join + arr_right.join
  # if two array halves are equal, return combined num. else num times 2
  if arr_left == arr_right
    return combined_num.to_i
  else 
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10