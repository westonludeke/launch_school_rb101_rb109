# Mutation

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

# Add each item from Array 1 to Array 2
array1.each { |value| array2 << value }

# Mutate array 1, which mutates array 2
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

puts array2