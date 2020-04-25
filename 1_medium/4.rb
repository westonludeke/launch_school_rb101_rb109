# 1000 Lights

# Starting off with a global Hash so it's accessible inside of the method
$hash = {}
# This is a global array for the final values the code outputs
$arr_final = []

def loop(n)
  i = 1
  x = 1

  # This is a separate side section to take the initial, empty global Hash and to add values to it. We will add 'n' number of Hash keys, all with the value of 'false' to begin with, which represents to the light switch being in the 'off' position. 

  # If I was a better programmer, this would probably be broken out into a separate method.
  arr_for_hash = []
  (1..n).each {|v| arr_for_hash << v }
  arr_for_hash.each do |value|
    $hash[value.to_s] = false
  end

  # This code is where all of the magic happens. It is iterating on the lightswitches (the global Hash) 'n' number of times. Then returns a new array with the numbers that will be switched on each iteration.
  while i <= n do
    arr = []
    # Create a new array of each number, 1 through n
    (1..n).each {|v| arr << v}
    change = arr.select {|x| x % i == 0}
    new_arr = []
    change.each do |val|
      new_arr << val.to_s
    end
    # new_arr contains the new array with the numbers that will be switched on the interation. This begins the iteration of each value of the new array.
    new_arr.each do |arr_val|
      # This sees if the original Hash contains a Key that matches with the new array value
      $hash.map do |k, v| 
        # If there's a match, the Hash value will be changed to the opposite boolean value. i.e. from "true" to "false" and vice-versa.
        if k == arr_val
          if $hash[k] == true
            $hash[k] = false
          elsif $hash[k] == false
            $hash[k] = true
          end
        # If no match, move to the next
        end
      end
    end
    i += 1
    x += 1
  end
  # The updated hash is now iterated upon
  $hash.each do |key, value| 
    if value == true
      $arr_final << key.to_i
    end
  end
  # Outputting the final array value
  p $arr_final
end

loop(5)


=begin ----PSEUDOCODE----
  
n = 5

0. Begin with a Hash of five lights (Keys) in the 'False' (values) position, representing 'Off.

1. Needs to run through the loop n (5) times

2. On each loop, return the number of each switch that will be toggled.

3. On loop one, x = 1, each switch will be toggled.
3b. Go to each Hash key and change the boolean value of the value to opposite value ('True').
3c. Increase x += 1. x is now = 2

4. On loop two, x = 2, only every 2nd switch will be toggled.
4b. Go to every 2nd Hash key and change the boolean value to the opposite.
  
=end