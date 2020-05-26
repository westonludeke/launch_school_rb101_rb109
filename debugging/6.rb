# Getting Things Done

# We wrote a method for moving a given number of elements from one array to another. We decide to test it on our todo list, but invoking move on line 11 results in a SystemStackError. What does this error mean and why does it happen?

def move(n, from_array, to_array)
  to_array << from_array.shift
  
  if n == 1
    return to_array
  end

  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# My answer guess: 
# I believe the problem is due to the move method being called inside itself. In other words, the function is recursive. 
#
# The answer:
# Every recursion needs a base case, i.e. a condition under which it will stop. Our method doesn't have one, so it just repeatedly calls itself with ever decreasing values for n.