# Rotation (Part 2)

# Write a method that can rotate the last n digits of a number. 

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.


def rotate_rightmost_digits(num_one, num_two)
  # Converts to String
  str = num_one.to_s
  # Converts to Array
  arr = str.split("")
  # Mirrors the num_two last elements of the array into a new Back Array... i.e. the back half
  back_arr = arr.last(num_two)
  #back_arr # [291]

  # This is how many items should be removed from the front of arr, i.e the front array
  remove_front = arr.length - num_two
  # This is the remainder of arr that wasn't removed... i.e. the front half
  front_arr = arr.first(remove_front)
  # This is reordering the back half array
  first = back_arr.shift
  back_arr << first 
  # This is combining the two halves together into a new array
  new_arr = front_arr + back_arr
  # Moving from an array to string to integer
  new_arr.join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917