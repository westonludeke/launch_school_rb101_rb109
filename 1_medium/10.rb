# Fibonacci Numbers (Last Digit)

def fibonacci_nonrecursive(n)
  return 1 if n <= 2
  first = 1
  second = 1
  until n < 3
    fibonacci = first + second
    first = second
    second = fibonacci
    n -= 1
  end
  fibonacci
end


def fibonacci_last(nth)
  fibonacci_nonrecursive(nth).to_s[-1].to_i
end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do 
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
