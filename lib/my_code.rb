def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array,starting_point=0)
  
  if starting_point 
    acc = starting_point
    i = 0
else
  acc = source_array[0]
  i = 1 
end
 while i < source_array.length
     if source_array[i]
        acc = yield(source_array[i],acc)
        # acc = source_array[i] + acc
    else 
      acc = false
    end
     i += 1
  end
  acc
end 

    
 
 
 