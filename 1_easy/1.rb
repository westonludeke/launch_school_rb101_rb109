# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates. 

# Weston's Answer:
def repeat(str, num)
  puts str * num
end

repeat('Hello', 3)

# My answer isn't 100% correct because it prints the string multiple times on one line.

# LS Answer:
# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end

#  repeat('Hello', 3)