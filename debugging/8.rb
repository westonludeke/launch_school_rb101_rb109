# Password

# The following code prompts the user to set their own password if they haven't
# done so already, and then prompts them to login with that password. However,
# the program throws an error. What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected?
# Verify that you are able to log in with your new password.

password = nil
p "Password is #{password}"

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp
  p "Verify Password is #{password}"

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

=begin
  
The code fails because the original password variable is a local variable,
so it cannot be accessed inside of the two methods.

You can fix this by making the password variable a global variable 'password'.
  
=end