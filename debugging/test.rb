def tfidf(term, document, documents)
  #puts ' '
  #p term
  # p document
  #p tf(term, document)
  #p idf(term, documents)
  tf(term, document) * idf(term, documents)
end

def tf(term, document)
  #document.split(/[\s-]/).count 
  #p "tf:"
  document.split(/[\s-]/).count { |word| word.downcase == term }
end

def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents = number_of_documents * 1.0
  # puts "There are #{number_of_documents} total documents."
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }
  #puts "#{number_of_documents_with_term} docs contain the term."
  puts "  "
  # puts "Math log:"
  Math.log(number_of_documents / number_of_documents_with_term)
end

document1 = "Schrödinger's cat is a thought experiment often featured in discussions of the interpretation of quantum mechanics. The Austrian physicist Erwin Schrödinger devised " +
"it in 1935 as an argument against the Copenhagen interpretation of quantum mechanics, which states that an object in a physical system can simultaneously exist in all possible configurations, " +
"a state called quantum superposition, and only observing the system forces the object into just one of those possible states. Schrödinger disagreed with this interpretation. In particular, " +
"quantum superposition could not work with larger objects. As an illustration, he presented a scenario with a cat in a sealed box, whose fate was linked to a subatomic event that may or may not occur. " +
"In a quantum superposed state of the subatomic particles, the cat would be both alive and dead, until someone opened the box and observed it."

document2 = "The domestic cat is a small, furry, carnivorous mammal. The term cat can, however, also refer to wild cats, which include animals like lions, tigers and leopards. " +
"Cats are claimed to have a lower social IQ than dogs but can solve more difficult cognitive problems and have a longer-term memory. International Cat Day is celebrated on August 8. " +
"Famous cats include Schrödinger's cat as well as Pudding and Butterscotch, which occur in some of the Launch School assignments."

document3 = "One of the core values that sets Launch School apart from some other coding schools out there is our emphasis on Mastery-based Learning. If the key to becoming a competent and confident Software Engineer " +
"is deep understanding of first principles, then the key to acquiring that understanding is through Mastery-based Learning. The core of Mastery-based Learning is replacing time with mastery. There's no graduation, " +
"but a continual learning journey of micro-improvements. At Launch School, we're not trying to catch a wave or take advantage of a surge in demand. Instead, we're trying to focus on things that'll be useful to you for decades to come, " +
"such as a systematic problem-solving approach or learning how to deconstruct a programming language or building sound mental representations of how web application work. Everything we're trying to do at " +
"Launch School is with an eye towards sustainable studying habits and building skills for a long-term career."

documents = [document1, document2, document3]

puts tfidf("quantum", document1, documents) # ~ 5.5
# puts "  "
# puts tfidf("quantum", document2, documents) # 0
# puts "  "
# puts tfidf("quantum", document3, documents) # 0
puts tfidf("cat", document1, documents)
# puts tfidf("cat", document2, documents) 
# puts tfidf("cat", document3, documents) 