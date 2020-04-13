# Rotation (Part 3)

# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

=begin ---- PSUEDOCODE ----
  
0. Beginning number: 735291
1. Rotate it to the left: 352917
2. Keep first number in place and rotate the rest: 329175
3. Keep first 2 digits in place and rotate: 321759
4. Keep first 3 digits in place and rotate: 321597
5. Keep first 4 digits in place and rotate: 321579
  
=end


def max_rotation(number)
  
  str = number.to_s
  rotate = str.length - 1
  index = -1

  rotate.times do 
    new_value = str.slice!(index += 1, 1)
    str = str.chars.push(new_value).join
  end
  str.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15
p max_rotation(8_703_529_146) == 7_321_609_845




