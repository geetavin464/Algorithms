# Find the first unique occurence in an array


def first_unique_element(*params)
    l = params.length
    
    for i in 0...l
        for j in i+1...l
            break if params[i] == params[j]
            if(params[i] != params[j] and j==l-1)
                return params[i]
            end
        end
    end
    
end

first_unique_element(3,5,4,6,4,5,3)