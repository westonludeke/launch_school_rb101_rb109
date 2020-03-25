# Halvsies
# https://launchschool.com/exercises/d9b79537

# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(arr)
  # new empty array
  new_arr = []
  if arr.length == 1
    # If the length of 'arr' is 1, split the array in half, then push to New Arr
    new_arr = arr.each_slice( (arr.size/2.0).round).to_a  
    # Then add an additional, new empty array to New Arr
    new_arr << []
  elsif arr.length == 0
    # If the arraty length is zero, create two, new empty arrays and push to New Arr.
    new_arr << []
    new_arr << []
  else
    # Else, for all other array sizes, simply split in half and push to the new array
    new_arr = arr.each_slice( (arr.size/2.0).round).to_a    
  end
  # Return the new array
  new_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
