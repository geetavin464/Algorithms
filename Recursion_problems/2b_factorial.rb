

def factorial(n)
  product=1
  for i in 1..n
    product *= i
  end
  return product
end

puts factorial(5)