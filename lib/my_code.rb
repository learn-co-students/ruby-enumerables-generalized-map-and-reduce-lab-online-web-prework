def map(array)
new_array = []  
i = 0
while i < array.length
  new_array.push(yield(array[i]))
  i += 1
end
return new_array
end

def reduce(array, value = nil)
  if value
    reduced = value
    i = 0
  else
    reduced = array[0]
    i = 1
  end
  while i < array.length
    reduced = yield(reduced, array[i])
    i += 1
  end
  return reduced
end

