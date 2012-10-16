# n^2
# Good for small & almost sorted lists
# The left hand side of the array is sorted
# You place each new element in the right place in the already sorted array

def insertion_sort(*arr)
  l = arr.length
  
    for i in 1..l-1
        for j in 0..i-1
            if(arr[j]>arr[i])
               temp = arr[j]
               arr[j] = arr[i]
               arr[i] = temp 
            end
        end
    end
    arr
    
end

insertion_sort(4,5,6,3,2,8,1,5)