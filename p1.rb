# Find the first unique occurence in an array


def first_unique_element(*params)
    l = params.length
    found = false
    unique_elem = nil
    for i in 0...l
        break if found
        for j in i+1...l
            break if params[i] == params[j]
            if(params[i] != params[j] and j==l-1)
                found = true
                unique_elem = params[i]
            end
        end
    end
    return unique_elem 
end

first_unique_element(3,5,4,6,4,5,3)