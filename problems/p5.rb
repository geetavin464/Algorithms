# Merge 2 sorted arrays into single sorted array


def merge(arr1, arr2)
    l1 = arr1.length
    l2 = arr2.length
    arr = []
    i=j=0
    while(i < l1 and j < l2)
       
       if(arr1[i] < arr2[j])
           arr << arr1[i]
           i+=1
       else
           arr << arr2[j]
           j+=1
       end    
    end
    arr = arr + arr1[i...l1] + arr2[j...l2] 
end


merge([1,4,6], [2,3,7])