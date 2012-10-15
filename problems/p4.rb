def util(a, x)
    if a.first == x
        true
    elsif a.empty?
        false
    else
        util(a.last(a.length−1), x)
    end
end


def sample2(a, *b) 
    if v = a.pop
        if util(a, v) 
            sample2(a, *b)
        else
            sample2(a, *([v] + b))
        end
    else
        b
    end 
end



## # Example usage ##
p sample2([1,2,3,4])
p sample2([2,1,2,3]) 
p sample2([5,2,1,5,2,2,3])