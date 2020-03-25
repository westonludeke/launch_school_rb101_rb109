# Right Triangles
# https://launchschool.com/exercises/d165e3c4

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(num)
  for i in 1..num do
    puts (" " * (num - i)) + ("*" * i)
  end
end

triangle(9)