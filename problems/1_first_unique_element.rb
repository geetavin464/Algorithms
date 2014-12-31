
def first_unique_element(arr)
  unique = arr[0]
  i=0
  while(i < arr.length)
    unique = arr[i+1] if arr[i]==unique
    i+=2
  end
  unique
end

arr = [2,3,4,3,2,4,6]
puts first_unique_element(arr)