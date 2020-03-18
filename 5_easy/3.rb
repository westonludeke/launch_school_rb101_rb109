# After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# Before Midnight
def after_midnight(clock)
  # Strip out the formatting of the colon
  remove_formatting = clock.tr('^0-9','')
  # Split up the hours and minutes into separate array values
  split = remove_formatting.chars.each_slice(2).map(&:join)
  # Hours is the first array value
  hours = split[0]
  # Minutes is the second array value
  minutes = split[1]
  # Calculating the total time
  total_time = ((hours.to_i * 60) + minutes.to_i)
    # Handling 24:00
    if total_time == 1440
      p 0
    else
      p total_time
    end
end

after_midnight('12:34')
after_midnight('00:00')
after_midnight('24:00')

# After Midnight
def before_midnight(time)
  # Strip out the formatting of the colon
  remove_formatting = time.tr('^0-9','')
  # Split up the hours and minutes into separate array values
  split = remove_formatting.chars.each_slice(2).map(&:join)
  # Hours is the first array value
  hours = split[0]

  # Minutes is the second array value
  minutes = split[1]

  # Calculating the total time
  total_time = ((hours.to_i * 60) + minutes.to_i)
    # Handling 24:00 and 00:00
    if total_time == 1440 || total_time == 0
      p 0
    else
      p subtract_from_midnight = (1440 - total_time)
    end
end

before_midnight('00:00')
before_midnight('12:34')
before_midnight('24:00')



