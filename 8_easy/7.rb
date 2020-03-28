# Double Char (Part 1)

# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(str)
  arr = str.split('')
  new_arr = []

  arr.each do |x|
    new_arr << x + x 
  end
  new_arr.join('')
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''