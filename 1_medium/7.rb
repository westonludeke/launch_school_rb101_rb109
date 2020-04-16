# Word to Digit

# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

def word_to_digit(str)
  str.gsub! 'zero', '0'
  str.gsub! 'one', '1'
  str.gsub! 'two', '2'
  str.gsub! 'three', '3'
  str.gsub! 'four', '4'
  str.gsub! 'five', '5'
  str.gsub! 'six', '6'
  str.gsub! 'seven', '7'
  str.gsub! 'eight', '8'
  str.gsub! 'nine', '9'
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


  # arr = str.scan(/[\w'-]+|[[:punct:]]+/)
  # #arr = separate_punctuation.split(" ")
  # p arr
  # new_arr = []

  # numbers = {
  #   "zero" => 0,
  #   "one" => 1,
  #   "two" => 2,
  #   "three" => 3,
  #   "four" => 4,
  #   "five" => 5,
  #   "six" => 6,
  #   "seven" => 7,
  #   "eight" => 8,
  #   "nine" => 9
  # }
  
  # arr.each do |word|
  #   if numbers.key?(word)
  #     num = numbers.values_at(word)
  #     new_arr << num.join.to_i
  #   else
  #     new_arr << word
  #   end
  # end
  # p new_arr
  # p new_str = new_arr.join(" ")
  #p new_str.gsub(/\s*./, '.')  