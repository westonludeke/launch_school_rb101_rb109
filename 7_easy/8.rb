# Multiply Lists

# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

def multiply_list(arr,arr_two)
  i = 0
  new_arr = []
  arr.each_with_index do |x, i|
    product = x * arr_two[i]
    i += 1
    new_arr << product
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

