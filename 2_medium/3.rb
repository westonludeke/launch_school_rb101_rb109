# Lettercase Percentage Ratio

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

def letter_percentages(str)
  hash = {}

  # get the length of the string
  string_length = str.length
  
  upper_count = str.scan(/[A-Z]/).length
  lowercase_count = str.scan(/[a-z]/).length

  lowercase_percent = (lowercase_count / string_length.to_f) * 100
  # Trim out any trailing zeros after the decimal
  lowercase_percent = lowercase_percent == lowercase_percent.to_i ? lowercase_percent.to_i : lowercase_percent
  hash[:lowercase] = lowercase_percent

  upper_percent = (upper_count / string_length.to_f) * 100
  # Trim out any trailing zeros after the decimal
  upper_percent = upper_percent == upper_percent.to_i ? upper_percent.to_i : upper_percent
  hash[:uppercase] = upper_percent

  neither_percent = 100 - (upper_percent + lowercase_percent)
  # Trim out any trailing zeros after the decimal
  neither_percent = neither_percent == neither_percent.to_i ? neither_percent.to_i : neither_percent
  hash[:neither] = neither_percent

  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Resource for how I successfully trimmed the trailing zeros after the decinal place: https://stackoverflow.com/a/22908829/5137112