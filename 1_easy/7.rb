# Stringy Strings

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(num)
  arr = [1,0]
  count = 0
  str = ""

  loop do
    if count.even?
      # push the first array value "1" to the str value.
      str << arr[0].to_s
      # break if the count is 1 less than the num value.
      break if count == (num - 1)
    else
      # push the second array value "0" to the str value.
      str << arr[1].to_s
      # break if the count is 1 less than the num value.
      break if count == (num - 1)
    end
    # increment the counter one time after passing through the loop once.
    count +=1
  end
  # return the new concatenated string
  return str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


=begin ---- PSEUDOCODE ----

1. Given a number ("num").

2. Return either a "1" or "0", alternating back-and-forth each time.

3. Until the number of 1s and 0s equals "num"


=end
