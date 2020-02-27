# Short Long Short

# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def short_long_short(string_one, string_two)
  # Create new array
  arr = []
  # Push both strings to the new array
  arr << string_one
  arr << string_two
  # Concat the shortest array item + the longest array item + the shortest item again
  p (arr.min_by(&:length)) + (arr.max_by(&:length)) + (arr.min_by(&:length))

end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"