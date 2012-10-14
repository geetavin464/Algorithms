# How to measure efficiency of recursive programs
# Compare the efficiency of iterative solution vs recursive solution
# Various Recursive Patterns
# Recursion (Solve the Problem by finding solutions to simpler problems - Decrease & Conquer)


# Mathematical Functions

# 1a. Factorial (Recursive)

def factorial(n)
    case n
    when 0            #Base Case. No longer calls itself
        return 1
    else              # Recursive Case
        return n*factorial(n-1) 
    end
end

factorial(5)

# 1b. Factorial (Iterative)

def factorial(n)
   factorial = 1
   while(n>0)
       factorial = factorial*n
       n-=1
   end 
    factorial
end

factorial(5)

# 2a. GCD (Recursive)

def gcd(a,b)
    if(a>b and a%b ==0)
        return b
    else
        gcd(a, a%b)
    end
end

gcd(22,21)

# 2b. GCD ( Iterative )

def gcd(a,b)
    
end

# 3a. Fibonacci (Recursive)

def fibonacci(n)
   case n
   when 0         #Base Case 1
       return 0
   when 1         #Base Case 2    
       return 1 
   else
      fibonacci(n-1)+fibonacci(n-2) 
   end
end

fibonacci(7)

# 3b. Fibonacci (Iterative)

def fibonacci(n)
   fib_a = 0
   fib_b = 1
   
   for i in 2..n
       fib = fib_a + fib_b
       fib_a =  fib_b
       fib_b = fib
   end
   
   fib
end

fibonacci(7)


# Recursion on Arrays/Lists

# Search

