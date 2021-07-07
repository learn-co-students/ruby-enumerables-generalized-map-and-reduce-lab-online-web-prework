# Your Code Here
def map(array)
  new_array = []
  i = 0 
  while i < array.length do 
    new_array.push yield array[i]
    i += 1 
  end
  new_array
end

def reduce(array, starting_point=nil)
  
  if starting_point 
    i=0 
    return_value = starting_point
  else
    i=1
    return_value = array[0]
  end
  
  while i < array.length do
    return_value = yield(return_value,array[i])
    i += 1
  end
  return_value
end