# Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Please write a word or multiple words:"
phrase = gets.chomp

character_length = phrase.gsub(/\s+/,'').length

puts "There are #{character_length} characters in '#{phrase}'."