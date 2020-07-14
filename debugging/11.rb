# What's wrong with the output?

# Josh wants to print an array of numeric strings in reverse numerical order. However, the output is wrong. Without removing any code, help Josh get the expected output.

arr = ["9", "8", "7", "10", "11"]
  arr.sort! do |x, y|
    y.to_i <=> x.to_i
  end
p arr
# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

=begin ----SOLUTION----
    
0. I moved the 'p' to the bottom after the sort block.
1. I also changed 'sort' to 'sort!' to modify the existing array.

It's not the best solution, but it solves the issue with the code's output.
    
=end