# Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

def buy_fruit(arr)
  grocery_list = []
  new_arr = []

  arr.each do |fruit, quantity|
    grocery_list << (fruit + " ") * quantity
    str = grocery_list.join('')
    new_arr = str.split(' ')
  end
  new_arr
end

#buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]