# Fibonacci Recursive

def fib(n)
  case n
  when 0 
    return 0
  when 1 
    return 1
  else 
    return fib(n-1) + fib(n-2)
  end
end

puts fib(7)

# Base case 0 - 0
# Base Case 1 - 1