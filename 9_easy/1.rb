# Welcome Stranger

# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

def greetings(arr,hsh)
  name = arr.join(' ')
  job_title = hsh[:title]
  career = hsh[:occupation]

  p "Hello, #{name}! Nice to have a #{job_title} #{career} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
