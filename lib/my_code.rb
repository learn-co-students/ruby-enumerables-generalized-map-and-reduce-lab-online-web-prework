def map(source_array)
  new_array = []
  i = 0 
  while i < source_array.length do 
    new_array << yield(source_array[i])
    i += 1 
  end 
  return new_array
end 

def reduce(source_array, starting_point = 0)
  i = 0 
  total = starting_point
  while i < source_array.length do 
      total = yield(total, source_array[i])
      i += 1 
  end 
    if total == 0 
      return true 
    end 
    return total  
  end