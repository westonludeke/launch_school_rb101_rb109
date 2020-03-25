# Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

#You may not use Array#reverse or Array#reverse!.

def reverse(arr)
  p arr
  p arr.object_id
  
  i=1

  while i <= arr.length/2 do
    temp = arr[i-1]
    arr[i-1] =  arr[arr.length-i]
    arr[arr.length-i] = temp
    i+=1
  end

  p arr
  p arr.object_id

end

reverse([2,4,6,8])
reverse(["c", "d", "e", "b", "a"])
reverse([])