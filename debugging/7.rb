# Neutralizer

# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?

def neutralize(sentence)
  words = sentence.split(' ')
  words.reverse_each do |word|
    words.delete(word) if negative?(word)
  end
  words.join(' ')
end

def negative?(word)
  ['dull', 'boring', 'annoying', 'chaotic'].include?(word)
end

p neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.


=begin ----SOLUTION----

The reason why this is failing to correctly remove the word 'boring' is because once the word 'dull' is removed from the 'words' array, the arrays indexes change because the array is now one item smaller.

Instead of 'boring' being removed, it becomes index 1 instead of index 2.
  
Reference: https://stackoverflow.com/questions/35499378/delete-element-of-array-while-iterating
  
=end