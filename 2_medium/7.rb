# Unlucky Days

# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

require 'date'

def friday_13th(year)
 (1..12).count {|month| Date.new(year, month, 13).friday?}
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2






=begin ----PSEUDOCODE----
  
0. Begin with a number representing the calendar year.
1. Find all of the 13th days of each month
2. See if the 13th day is on a Friday
3. Return the total number of 13th days that are on Friday

# https://stackoverflow.com/questions/36391830/how-many-friday-13ths-in-a-year
  
=end