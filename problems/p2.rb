# Reverse a String in Place

def reverse_string(str)
l = str.length

     for i in 0..l/2
        temp = str[i]
        str[i] = str[l-i-1]
        str[l-i-1] = temp
     end
     str
end

reverse_string("string1")

# Efficiency: 