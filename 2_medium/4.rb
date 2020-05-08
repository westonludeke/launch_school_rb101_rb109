# Matching Parentheses?

# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(string)
  arr = string.split('')

  count = 0

  arr.each do |x|
    if x == '('
      count += 1
    elsif x == ')'
      count -= 1
      # Handling too many ) brackets
      if count < 0
        return false
        break 
      end
    end
  end
 
  if count == 0
    return true
  else
    return false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false


=begin ----PSEUDOCODE----

1. Method takes string as an argument
2. Start with variable set to '0' and loop through each character in the string.
3. When you see a '(' add 1 to the variable.
4. When you see a '(' subtract 1 from the variable.
5. If the variable goes negative, we have too many ')'...and can return 0 immediately.
6. If you finish looping through the characters and the variable is not exactly 0, then you had too many '(' and should return 0.

=end