# Cute angles

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

def dms(num)
  arr = num.divmod 1
  angle_degrees = arr[0]

  mins_and_secs = arr[1]
  #mins_and_secs
  mins = 60 * mins_and_secs
  #p mins.to_i
  seconds_perc = mins % 1
  seconds = seconds_perc * 100
  p format("%02d°%02d'%02d", angle_degrees, mins, seconds)
end


#dms (76.73)

 dms(30) 
 dms(76.73) 
 dms(254.6) 
 dms(93.034773) 
 dms(0) 
 dms(360) 