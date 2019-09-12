def map(source_array)
  new_array = []
  i = 0 
  while i < source_array.length 
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end

def reduce(source_array, string_val=nil)
  if string_val
    sum = string_val
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