# Letter Counter (Part 2)

# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(str)
  hsh = {}
  # split up each word in the string to a separate array value
  arr = str.split(" ")
  new_arr = []
  # for each value of the array
  arr.each do |val|
    # find the length of the value after stripping out all characters that aren't letters
    size = val.gsub(/[^0-9a-z ]/i, '').length
    # push the length value to a new array
    new_arr << size
  end
  # Create a new hash and get the new array freqeuency count
  count = new_arr.each_with_object(Hash.new(0)){|key, hash| hash[key] += 1}
  p count 
end

word_sizes('Four score and seven.')
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?")
word_sizes('') 
