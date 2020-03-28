# Double Char (Part 2)

# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(str)
  arr = str.split('')
  new_arr = []


  arr.each do |x|
    if x =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/
      new_arr << x + x
    else
      new_arr << x
    end
  end
 p new_arr.join('')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""