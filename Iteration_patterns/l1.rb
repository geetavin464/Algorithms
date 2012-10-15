# Common Iteration Patterns & the succint Ruby Versions

#------------------------------------------------------------------------------------------------#

# 1a. Counting Pattern: Counting the number of elements in an array or collection

def count(*arr)
   l = arr.length
   count = 0
   for i in 0...l
       count+=1
   end
    count
end

count(2,3,4,5)

# 1b. Using Ruby

def count(*arr)
    arr.count
end

count(2,3,4,5)

#------------------------------------------------------------------------------------------------#

# 2a. Filter Counting Pattern: Counting the number of elements in an array that are even

def count_even(*arr)
   l = arr.length
   count = 0
   for i in 0...l
       count+=1 if(arr[i]%2 == 0)
   end 
   return count
end

count_even(2,3,4,5)

# 2b. Using Ruby

def count_even(*arr)
    arr.count {|a| a.even?}
end

count_even(2,3,4,5)

#------------------------------------------------------------------------------------------------#

# 3a. Accumulate Pattern: 

def sum(*arr)
   l = arr.length
   sum = 0
   for i in 0...l
      sum+= arr[i] 
   end
   sum
end

sum(2,3,4,5)

# 3b. Using Ruby

def sum(*arr)
    arr.inject {|sum, a| sum+a} #arr.reduce(:+)
end

sum(2,3,4,5)

#------------------------------------------------------------------------------------------------#

# 4a. Filtered Accumulate Pattern

def sum_even(*arr)
    l = arr.length
    sum = 0
    for i in 0...l
        sum+= arr[i] if(arr[i]%2==0)
    end
    sum
end

sum_even(2,3,4,5)

# 4b. Using Ruby

def sum_even(*arr)
    arr.select{|a| a.even?}.reduce(:+)
end

sum_even(2,3,4,5)
#------------------------------------------------------------------------------------------------#

# 5a. Search 

def search(elem, *arr)
   l = arr.length
   
   for i in 0...l
       return true if(arr[i] == elem)  #Return out of a loop/method. Returns to method call. Use return statements more effectively.                
   end 
   
   return false
end

search(4, 2,3,4,5)

#5b. Using Ruby

def search(elem, *arr)
    arr.include?(elem)
end

search(4, 2,3,4,5)

#------------------------------------------------------------------------------------------------#

# 6a. Filter 

def get_even(*arr)
    l = arr.length
    even_arr = []
    for i in 0...l
        even_arr.push arr[i] if arr[i]%2 == 0
    end
    even_arr
end

get_even(2,3,4,5)

# 6b. Using Ruby

def get_even(*arr)
    arr.select{|a| a.even?}
end

get_even(2,3,4,5)

#------------------------------------------------------------------------------------------------#

# 7a. Extreme Pattern

def largest(*arr)
    l = arr.length
    largest = arr[0]
    for i in 1...l
       largest = arr[i] if (arr[i] > largest) 
    end
    largest
end

largest(2,3,4,5)

# 7b. Using Ruby

def largest(*arr)
    arr.max 
end

largest(2,3,4,5)
#------------------------------------------------------------------------------------------------#

# 8a. Extreme Index

def index_largest(*arr)
   l = arr.length
   index = 0
   for i in 0...l
       index = i if(arr[i] > arr[index])
   end
   index
end

index_largest(2,3,4,5)

# 8b. Using Ruby

def index_largest(*arr)
    arr.index(arr.max)
end

index_largest(2,3,4,5)
#------------------------------------------------------------------------------------------------#

# 9a. Map 

def decr_by_1(*arr)
   l = arr.length
   res_arr = []
   for i in 0...l
       res_arr.push arr[i]-1
   end 
   res_arr
end

decr_by_1(2,3,4,5)

# 9b. Using Ruby

def decr_by_1(*arr)
    arr.map{|a| a-1 }
end

decr_by_1(2,3,4,5)
#------------------------------------------------------------------------------------------------#

# Merge

#------------------------------------------------------------------------------------------------#

# For Loop takes care of the incr/decr itself

