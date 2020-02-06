# Default Arguments in the Middle
# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# Weston's guess: "ArgumentError: wrong number of arguments (given 3, expected 4)"

# Correct answer: This is in the section called "Default Positional Arguments"
# When the method defines default arguments you do not need to supply all of the arguments to the method.
# Ruby will fill in the missing arguments in-order.

# 4 is assigned to a. 6 is assigned to d. 5 is assigned to b. c uses default value of 3.
# my_method returns [4,5,3,6]