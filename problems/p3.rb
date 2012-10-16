# Binary Search

def binary_search(elem, arr)
    l = arr.length
    while(!arr.empty?)
        if(elem < arr[l/2])
            binary_search(elem, arr[0...l/2])
        elsif(elem > arr[l/2])
            binary_search(elem,arr[l/2+1...l])
        else
            return true
        end
    end
end


binary_search(9,[1,2,3,4,5,6,7,8,9])
