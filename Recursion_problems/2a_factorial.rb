# Factorial Recursive

def factorial(n)
  case n
  when 0 
    return 1
  when 1 
    return 1
  else
    n*factorial(n-1)
  end
end

puts factorial(5)