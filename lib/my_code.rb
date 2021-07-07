def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array.push(yield(array[i]))
    i += 1
  end
  new_array
end

def reduce(array, start = 0)
  i = 0
  total = start
  while i < array.length do
  total = yield total, array[i] 
  i += 1
  end
  if total == 0
    true
  else 
    total
 end 
end
