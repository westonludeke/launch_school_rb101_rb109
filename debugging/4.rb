# Reverse Sentence

# The reverse_sentence method should return a new string with the words of its argument in reverse order, without using any of Ruby's built-in reverse methods. However, the code below raises an error. Change it so that it behaves as expected.

def reverse_sentence(sentence)
  # Splits the string into an array, where each word in the sentence is a different array value.
  words = sentence.split(' ')
  reversed_words = []

  i = words.length
  # Decided it would be easier to countdown instead of up
  while i > 0
    # Going from (i-1) down to 0
    reversed_words << words[i-1] 
    i -= 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'