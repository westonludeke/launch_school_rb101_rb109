# Letter Swap

# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

def swap(str)
  # split each word of the string up into multiple array values
  arr = str.split(' ')
  # create new string
  new_string = ""
  # for each word value in the array
  arr.each do |word|
    # get the first letter
    first = word.chars.first
    # get the last letter
    last = word.chars.last
    # get the remaining word without the first and last letter
    shortened_word = word[1...-1]
    # Combine strings back together as a new string
    new_string = new_string + last 
    new_string = new_string + shortened_word 
    new_string = new_string + first + " "
  end
  p new_string
end

swap('Hello World')
swap('Abcde')
swap('Oh what a wonderful day it is') 

