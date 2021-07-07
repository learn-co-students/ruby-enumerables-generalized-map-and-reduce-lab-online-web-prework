def map (source_array)# Your Code Here
  i = 0
  new_array = []

  while i < source_array.count do 
    new_array.push(yield(source_array[i]))
  
    
    i += 1
  end
 
  return new_array
end

def reduce(array, sv=nil)
  if sv 
    sum = sv
    i = 0 
  else
    sum = array[0]
    i = 1 
  end
  while i < array.length 
  sum = yield(sum, array[i])
  
  i += 1 
end
  sum
end





