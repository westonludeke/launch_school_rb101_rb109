# Palindromic Substrings

# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

def palindromes(str)
  indices = (0..str.length).to_a
  substring = indices.product(indices).reject{|i,j| i > j}.map{|i,j| str[i..j]}.uniq
  remove_empty = substring.reject { |c| c.empty? }
  
  new_arr = []

  remove_empty.each do |x|
    if x == x.reverse && x.length > 1
      new_arr << x
    end
  end
  p new_arr
end

palindromes('knitting cassettes')
palindromes('hello-madam-did-madam-goodbye')