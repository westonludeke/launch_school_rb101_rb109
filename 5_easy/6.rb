# Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

def word_sizes(str)
  hsh = {}
  # split up each word in the string to a separate array value
  arr = str.split(" ")
  new_arr = []
  # for each value of the array
  arr.each do |val|
    # find the length of the value
    size = val.length
    # push the length value to a new array
    new_arr << size
  end
  # Create a new hash and get the new array freqeuency count
  count = new_arr.each_with_object(Hash.new(0)){|key, hash| hash[key] += 1}
  p count 
end

word_sizes('Hello Wes Ludeke the Amazing')
word_sizes('Four score and seven.')
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?")
word_sizes('') 
