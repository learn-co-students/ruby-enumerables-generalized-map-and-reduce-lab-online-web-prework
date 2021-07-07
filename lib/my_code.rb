def map(source_array)
  new = []
  i = 0 
  while i < source_array.length
  new.push (yield (source_array[i]))
  i += 1 
  end
new
end 

def reduce(source_array, starting_point)
  new []
  i = 0 
  while i < source_array.length
  new.push (yield (source_array[i], starting_point[i]))
  i -= 1 
  end
new
end