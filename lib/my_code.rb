def map (array)
  new = []
  index = 0 
  while index < array.length do
    new.push(yield(array[index]))
    index += 1 
  end
  return new
end

def reduce(array, stating_value*)
  
  if starting_value
    total = starting_value
    index = 0
  else
    total = array[0]
    index += 1 
  end
  
  while index < array.length do
    total = yield(total, array[index])
    index += 1 
  end
  
  return total 
end