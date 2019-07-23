# Your Code Here

def map (array)
  
  new_array = []
  i = 0
  
  while i < array.length 
  
  new_array.push(yield(array[i]))
  
  i += 1
 
  end

  new_array
  
end

  
def reduce(array, b=nil)
  
  if b 
    new_value = b
    i = 0
  else
    new_value = array[0]
    i = 1
  end
  
  while i < array.length
  
  new_value = yield(new_value, array[i])
  
  i += 1
  end
  
  new_value

end