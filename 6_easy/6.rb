# Combining Arrays
# https://launchschool.com/exercises/1ba11514

# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

def merge(arr, arr2)
  p arr.concat(arr2).uniq
end


merge([1, 3, 5], [3, 6, 9]) 