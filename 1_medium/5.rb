# Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

def diamond(n)
  # Make an array with all odd numbers between 1 and n
  arr = (1..n).select(&:odd?) 
  # Top half of the diamond, including the center line
  arr.each do |x|
    left_shift = (arr.max-x)/2 
    print " " * left_shift
    puts "*" * x
  end
  # Removes the last item from the array to not duplicate the center line
  remove = arr.pop
  # Bottom half of the diamond
  arr.reverse.each do |y|
    # To get the appropriate amount of Still need to subtract from the last array item, which was arr.max but that number has since been removed.
    left_shift = (remove-y)/2 
    print " " * left_shift
    puts "*" * y
  end
end

diamond(9)
