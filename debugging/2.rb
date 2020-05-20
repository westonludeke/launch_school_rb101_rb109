# HEY YOU!

# String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU? Modify the code so that it produces the expected output.

def shout_out_to(name)
  #name.chars.each { |c| c.upcase! }
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=begin
  
0. At first glance, simply calling 'upcase!' on the name string will give us the desired result.
1. I believe for the code above to work, the string would need to be split into an array, with each character as an array element.
2. Then 'upcase!' would be called on each array element.
3. The the array could be joined together and assigned to a new string variable.
4. #1-3 isn't necessary if we simply call 'upcase!' on the name string.

=end