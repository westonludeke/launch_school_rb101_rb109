# Fibonacci Numbers (Procedural)

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

p fibonacci_nonrecursive(20) == 6765
p fibonacci_nonrecursive(100) == 354224848179261915075
p fibonacci_nonrecursive(100_001) # => 4202692702.....8285979669707537501