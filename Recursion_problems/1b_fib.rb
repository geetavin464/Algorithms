# Fibonacci Iterative

def fib_iterative(n)
  fib_a = 0
  fib_b = 1
  for i in 2..n
    fib = fib_a + fib_b
    fib_a = fib_b
    fib_b = fib
  end
  return fib
end

puts fib_iterative(7)