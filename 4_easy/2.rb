# What Century is That?

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

def century(string)
  if string > 11000
    cent = (string.to_f / 100).ceil
    year = cent / 10
    nth_year = (11..13).include?(cent) || !(1..3).include?(year)
  else
    cent = (string.to_f / 100).ceil
    year = cent % 10
    nth_year = (11..13).include?(cent) || !(1..3).include?(year)
  end

  return "#{cent}th" if nth_year
  return "#{cent}st" if year == 1
  return "#{cent}nd" if year == 2
  return "#{cent}rd" if year == 3
end

p  century(2000) == '20th'
p  century(2001) == '21st'
p  century(1965) == '20th'
p  century(256) == '3rd'
p  century(5) == '1st'
p  century(10103) == '102nd'
p  century(1052) == '11th'
p  century(1127) == '12th'
p  century(11201) == '113th'


