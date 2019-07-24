def map(source_array)
  new=[]
  i=0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i+=1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  if starting_point != 0
    a = starting_point
    i = 0
  else
    a = source_array[0]
    i = 1
  end
  while i < source_array.length do
    a = yield(a, source_array[i])
    i+=1
  end
  a
end
