# After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

def time_of_day(num)
  # This is if we start with a positive number in the method, and the number is less than 60 (i.e. less than 60 mins)
  if num > 0 && num < 60
    p "00" + ":" + num.to_s
  # This is if num is positive but greater than 60 mins. And also less than 1440, or 24:00  
  elsif num > 60 && num <= 1440
    hour = num / 60
    string_hour = hour.to_s
    minutes = num % 60
    string_minutes = minutes.to_s
    p string_hour + ":" + string_minutes
  # If the number is greater than 1440, reduce to less than one hour
  elsif num > 1440
    reduce_hour = num % 1440
    hour = reduce_hour / 60
    string_hour = hour.to_s
    minutes = reduce_hour % 60
    string_minutes = minutes.to_s
    p string_hour + ":" + string_minutes
  # If number is negative, reduce from 24
  elsif num < 0
    reduce_hour = num % 1440
    hour = reduce_hour / 60
    string_hour = hour.to_s
    minutes = reduce_hour % 60
    string_minutes = minutes.to_s
    p string_hour + ":" + string_minutes
  elsif num == 0
    p "00:00"
  else 
    p "Invalid"
  end 
end

#time_of_day(-4231)

=begin ---- PSEUDOCODE ----

24 hour clock has 1400 minutes

1)  0 = 00:00
2)  -3 = 24:00 - 3 = 23:57
3)  35 = 00:00 + 35 = 00:35

4) -1437 = 24:00 - 1437.  1440-1437 = 00:03

5) 3000 = 00:00 + 3000 = 02:00

6) 800 = 00:00 + 800 = 13:20

7) -4321 = 24:00 - 4321.  1440-4321

=end


time_of_day(0) 
time_of_day(-3) 
time_of_day(35) 
time_of_day(-1437) 
time_of_day(3000) 
time_of_day(800) 
time_of_day(-4231)


