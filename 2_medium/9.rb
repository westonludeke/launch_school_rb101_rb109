# Bubble Sort

def bubble_sort!(arr)

  i = 0
  loop do

    if arr[i] > arr[i + 1]
      # Swap if first comparison value is greater than the second
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
    i += 1
    break if i == (arr.length - 1)
  end
  return arr
end

#arr = [5,3]
arr = [6,2,7,1,4]
#arr = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)

# Run the bubble sort method on the array until no more swaps can occur
while arr != arr.sort do
  bubble_sort!(arr)
end

p arr

=begin

----PSEUDOCODE----

0. Given an array of numbers
1. Loop through the array
2. Compare the first array item with the second array item
3. If the first item is larger than the second item, swap these array items
  b. If the first item is smaller than the second item, no swap needed.
4. Loop through the array a second time, comparing the second array item with the third array item.
5. Swap if necessary
6. Continue for the length of the array (-1).   
7. Repeat the above steps until no more swaps can be made.
  
=end




