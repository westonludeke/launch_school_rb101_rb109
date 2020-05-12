# Triangle Sides

def triangle(one, two, three)
  arr = []
  arr += [one, two, three]
  arr.sort!

  # The two smallest sides (i.e. two smallest numbers)
  two_sides_sum = arr[0] + arr[1]

  if two_sides_sum > arr[2]
    # Check if each value is greater than 0
    if arr.all? { |value| value > 0}
      # Check if each value is the same
      if arr.uniq.size <= 1
        return :equilateral
      elsif arr.uniq.size == 3
        return :scalene
      else
        return :isosceles
      end
    else
      return :invalid
    end
  else
    return :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

=begin ----NOTES----
  
Three types of triangles:

* equilateral - All 3 sides are of equal length
* isosceles -   2 sides are of equal length, while the 3rd is different
* scalene -     All 3 sides are of different length

To be a valid triangle:

* The sum of the lengths of the two shortest sides must be greater than the length of the longest side.
* AND: All sides must have lengths greater than 0.
* If either condition is not satisfied, the triangle is invalid.


----PSEUDOCODE----

0. Given three numbers 
1. Add the numbers to an array
2. Sort the array, smallest to largest
3. Sum the first two numbers
4. If the sum of the first two numbers is greater than the third number, continue.
  4b. Otherwise exit with "invalid"
5. If all numbers are greater than zero, continue
  5b. Otherwise exit with "invalid"
6. If the program hasn't exited, return the triangle type.
  
=end