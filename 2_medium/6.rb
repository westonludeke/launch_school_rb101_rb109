# Tri-Angles

def triangle(one, two, three)
  arr = []
  arr += [one, two, three]

  # Sum of all angles must be exactly 180 degrees
  if arr.sum == 180
    # Check if each value is greater than 0
    if arr.all? { |value| value > 0}
      # Check if there's a value equal to 90
      if arr.include?(90)
        return :right
      # Check if each value is less than 90
      elsif arr.all? {|value| value < 90}
        return :acute
      # Otherwise return obtuse
      else
        return :obtuse
      end
    else
      return :invalid
    end
  else
    return :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

=begin ----NOTES----
  
Three types of triangles:

* right - One angle of the triangle is a right angle (90 degrees)
* acute - All 3 angles of the triangle are less than 90 degrees
* obtuse - One angle is greater than 90 degrees

To be a valid triangle:

* The sum of the angles must be exactly 180 degrees.
* All angles must be greater than 0.
* If either of these conditions is not satisfied, the triangle is invalid


----PSEUDOCODE----

0. Given three numbers 
1. Add the numbers to an array
2. Sort the array, smallest to largest
3. Sum the array and see if it equals 180.
  3b. If not, return "invalid"
4. If all numbers are greater than zero, continue
  4b. Otherwise exit with "invalid"
5. If the program hasn't exited, return the triangle type:

a. If all three values are less than 90, return "acute"
b. If one value is greater than 90 degrees, return "obtuse"
c. If one value equals 90, return "right"

=end


