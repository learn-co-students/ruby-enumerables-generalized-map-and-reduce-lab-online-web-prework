def map(source_array)
  new_array = []
  index = 0 
  while index < source_array.length do 
    new_array.push(yield(source_array[index]))
    index += 1 
  end 
  new_array
end 

def reduce(source_array, *starting_value)
  
  if starting_value[0]
    new_value = starting_value[0]
    index = 0 
  else 
    new_value = source_array[0]
    index = 1 
  end 
  
  while index < source_array.length do 
    new_value = yield(new_value, source_array[index])
    index += 1 
  end 
  new_value 
  # new_value = 0
  # index = 0 
  # while index < source_array.length do 
  #   value = source_array.length 
  #   new_value = starting_value + value + value 
  #   yield new_value
  #   index += 1 
  # end 
  # new_value
end 
    
  
  
  