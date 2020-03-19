# Bannerizer

# Write a method that will take a short line of text, and print it within a box.

def print_in_box(str)
  # putting the string into an array, where each word is a unique array value
  arr = str.split
  # wordlength is the length of the size of the array, not counting spaces
  wordlength = arr.join.size
  # width is equal to 'wordlength' + 3 + the number of values in the array
  width = wordlength + 3 + arr.count()
  # based on the number in 'width', print "-" x number of times
  width.times{print "-"}
  # subtract 2 from the 'width' to represent the beginning and the end of the line
  num_spaces = width - 2
  # Top and bottom box spacing, directly above and directly below the string printed out
  box_spacing = "|" + "|".prepend(" " * num_spaces)
  puts "\n" 
  puts box_spacing
  # this prints the beginning and ending pipes, with the string in the middle.
  # The string is retrieved from the array, joined together as one string.
  puts "| " + arr.join(" ") + " |"
  puts box_spacing
  # printing out the bottom of the box
  width.times{print "-"}
  puts "\n"
end

print_in_box("To boldly go where no one has gone before.")
