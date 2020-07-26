def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array.push(yield array[i])
    i += 1
  end
  return new_array
end

def reduce(array,start = nil)
  if start == nil 
    total = array[0]
    i = 1
  else 
    total = start
    i = 0
  end
  while i < array.length do
   total = yield(total, array[i])
    i += 1
  end
  return total
end