# Your Code Here
def map (source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  
     ret_value = starting_point
  
    
 end

  i = 0 # set up a i for the enumeration 
  while i < source_array.length do # a loop for each element in array
    ret_value = yield(ret_value, source_array[i])
    i += 1
  end
  return ret_value
end
