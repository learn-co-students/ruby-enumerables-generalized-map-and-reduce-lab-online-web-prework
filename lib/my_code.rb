def map(source_array)
  new = []
  count = 0 
  while count < source_array.length
    new.push(yield(source_array[count]))
    count+=1 
  end
  new
end

def reduce(source_array, starting_point = nil)
  if starting_point
    sum = starting_point
    i = 0 
  else 
    sum = source_array[0]
    i = 1 
  end 
  
  while i < source_array.length 
    sum = yield(sum, source_array[i])
    i += 1 
  end
  sum
end