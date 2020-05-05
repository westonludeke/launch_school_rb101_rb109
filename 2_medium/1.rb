# Longest Sentence

# Importing the external text file of the Ghettysburg Address:
lines = File.readlines("1_text.txt")
# Importing the external text of the book 'Frankenstein'
#lines = File.readlines("1_book.txt")

line_count = lines.size
text = lines.join

arr = []
arr = text.split(/\.|\?|!/)
longest_sentence = arr.max_by(&:length)
# returns the text of the longest sentence
p longest_sentence
# returns the length of the longest sentence
p "----"
p "The longest sentence is #{longest_sentence.split.size} words in length."

# Code to count the number of sentences in the text. Code not used in this program.
# http://www.java2s.com/example/ruby-book/counting-sentences-and-paragraphs-in-text-file.html
# sentence_count = text.split(/\.|\?|!/).length
# puts "The text contains #{sentence_count} sentences"

=begin ----PSEUDOCODE----

0. Have a text file containing multiple paragraphs
1. Given a paragraph containing multiple sentences.
2. Split each paragraph into multiple, separate strings.
3. Each string will be separated by either periods (.), exclamation points (!), or question marks (?).
4. Find the longest string length
5. Return the longest string

=end