# Lettercase Counter
# https://launchschool.com/exercises/96e0267a

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.



def letter_case_count(str)
  hash = {}
  
  lowercase = str.scan(/[a-z]/).length
  hash[:lowercase] = lowercase

  uppercase = str.scan(/[A-Z]/).length
  hash[:uppercase] = uppercase

  neither = str.scan(/[^a-zA-Z]/).length
  hash[:neither] = neither
end

#letter_case_count('Hello WoRlD 123')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }