# n^2
# compares 2 adjacent elements & swaps them if required. At the end of 1st pass, the largest element bubbles to the end
# Continues till the last-1 element in the 2nd pass
# Good for almost sorted arrays
# Fixes the order in the 1st pass
# Verified in the second pass ( '2n' efficiency)


def bubble_sort(*arr)
   l = arr.length
   for i in 0..l-1
       for j in 0...l-i-1
           if(arr[j] > arr[j+1])
               temp = arr[j]
               arr[j] = arr[j+1]
               arr[j+1] = temp
            end
        end
    end
    arr
end

bubble_sort(4,5,6,3,2,8,1,5)