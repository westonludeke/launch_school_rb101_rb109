# Next Featured Number Higher than a Given Value

def featured(num)

  arr = []
  # add the integer to an array
  arr << num

  i = 0
  while i >= 0 do 
    # Take the last array element and add one to the value. Then add to the end of the array.
    arr << arr[-1] + 1
    i += 1
    
    # Breaking if number is too large
    if (arr[-1] > 9876543210)
      return "There is no possible number that fulfills those requirements"
    end

    # Break if all of these conditions are met:
    #  The last array element value is odd
    #  Each element in the array is unique
    #  Of the last array integer element, see if each integer digit is unique
    #  See if the last array item is divisible by 7 with no remainder
    break if ((arr[-1].odd?) && (arr == arr.uniq) && (arr[-1].digits.uniq.length == arr[-1].digits.length) && (arr[-1] % 7 == 0))
  end
  
  return arr[-1]

end

p featured(12)  == 21
p featured(20)  == 21
p featured(21)  == 35
p featured(997)  == 1029
p featured(1029)  == 1043
p featured(999_999) == 1_023_547
# This large number doesn't work too well, so try not to run it
#p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) 

=begin ----NOTES----
  
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

Reference to check if all items in an array are unique: https://stackoverflow.com/questions/17560382/quick-way-to-check-if-all-items-in-a-ruby-array-are-unique


----PSUEDOCODE----

0. Given an integer
1. Add to the integer until new integer is divisible by 7 with no remainder.
2. See if the new integer is an odd number
3. See if each digit in the integer occurs only once
4. Return next featured number that is greater than the argument (given integer at step 0)

=end