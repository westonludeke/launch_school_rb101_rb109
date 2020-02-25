# Greeting a user

# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

puts "What is your name?"
name = gets.chomp()

if name.include? "!"
  capitalize = name.upcase
  # The solution uses ".chop" which is a bit cleaner than my code below:
  capitalize_minus_exclamation = capitalize.tr('!', '')
  puts "HELLO #{capitalize_minus_exclamation}. WHY ARE WE SCREAMING!"
else
  puts "Hello #{name}. "
end