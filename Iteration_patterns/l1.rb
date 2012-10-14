# While Loop
# Loop Condition, Body, Incr/Decr
# For loops Take care of the incr/decr themselves

# Counting Pattern: Counting the number of elements in an array or collection

def count(*arr)
   l = arr.length
   count = 0
   for i in 0...l
       count+=1
   end
    count
end

count(2,3,4,5)

# Filter Counting Pattern: Counting the number of elements in an array that are even

def count_even(*arr)
   l = arr.length
   count = 0
   for i in 0...l
       count+=1 if(arr[i]%2 == 0)
   end 
   return count
end

count(2,3,4,5)

# Accumulate Pattern: 

def sum(*arr)
   l = arr.length
   sum = 0
   for i in 0...l
      sum+= arr[i] 
   end
   sum
end

sum(2,3,4,5)

# Filtered Accumulate Pattern

def sum_even(*arr)
    l = arr.length
    sum = 0
    for i in 0...l
        sum+= arr[i] if(arr[i]%2==0)
    end
    sum
end

sum_even(2,3,4,5)

# Search 

def search(elem, *arr)
   l = arr.length
   
   for i in 0...l
       return true if(arr[i] == elem)  #Return out of a loop/method. Returns to method call. Use return statements more effectively.                
   end 
   
   return false
end

search(4, 2,3,4,5)

# Filter 

def get_even(*arr)
    l = arr.length
    even_arr = []
    for i in 0...l
        even_arr.push arr[i] if arr[i]%2 == 0
    end
    even_arr
end

get_even(2,3,4,5)


# Extreme Pattern

def largest(*arr)
    l = arr.length
    largest = arr[0]
    for i in 1...l
       largest = arr[i] if (arr[i] > largest) 
    end
    largest
end

largest(2,3,4,5)

# Extreme Index

def index_largest(*arr)
   l = arr.length
   index = 0
   for i in 0...l
       index = i if(arr[i] > arr[index])
   end
   index
end

index_largest(2,3,4,5)

# Map 

def decr_by_1(*arr)
   l = arr.length
   res_arr = []
   for i in 0...l
       res_arr.push arr[i]-1
   end 
   res_arr
end

decr_by_1(2,3,4,5)

# Merge

