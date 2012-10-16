# n^2
# Finds the smallest element & places it at the beginning
# Not good for large data


def selection_sort(*arr)
    l = arr.length
    for i in 0..l-2
        for j in i+1..l-1
            if(arr[j] < arr[i])
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            end
        end
    end
   arr 
end

selection_sort(4,5,6,3,2,8,1,5)

