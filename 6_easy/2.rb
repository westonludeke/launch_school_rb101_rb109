# Delete vowels

# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(arr)
  # create new array
  new_arr = []
  # push new array into a string
  str = arr.join(' ')
  # delete all of the vowels in the string
  str.delete! 'aeiouAEIOU'
  # push the string back to an array
  new_arr = str.split(' ')
  # return the new array
  p new_arr
end


#remove_vowels(%w(green YELLOW black white))
#remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
#remove_vowels(%w(ABC AEIOU XYZ))
