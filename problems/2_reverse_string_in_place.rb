# Reverse a string

def reverse_string(str)
  l = str.length
  for i in 0...l/2
    temp = str[i]
    str[i]=str[l-i-1]
    str[l-i-i] = temp
  end
  str
end

str = "geeta"
puts reverse_string(str)