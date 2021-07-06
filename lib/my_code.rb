def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new << yield(source_array[i])
    i += 1
  end
  new
end

def reduce(source_array, start = nil)
  if start
    sum = start
    i = 0 
  else
    sum = source_array[0]
    i = 1
  end
  
  while i < source_array.length do
    sum = yield(sum, source_array[i])
    i += 1
  end
  sum
end
