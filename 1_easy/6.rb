# Reverse It (Part 2)

# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

def reverse_words(string)
  arr = []
  # Split up the string into a unique string for each word. Then add to an array.
  arr = string.split
  # Find the length of each string in the array.
  arr.each do |word|
    # If a string inside the array contains five or more characters
    if word.length >= 5
      # Reverse the string
      word.reverse!
    else
      # Else, simply return the string as-is
      word
    end
  end
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS