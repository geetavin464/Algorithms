# nlogn
# Good for large data
# Divide & Conquer
# split arrays recursively & then merge them

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

def split(arr)
    l = arr.length
    return arr[0..l/2-1], arr[l/2..l-1]
end

def merge_sort(*arr)

end

merge_sort(4,5,6,3,2,8,1,5)