# Your Code Here

def map(array)
  new_array = []
  i = 0 
  while i < array.length do 
    new_array.push(yield(array[i])) 
    i += 1 
  end 
  return new_array
end 

def reduce(source_array, start=nil)
  if start 
    i = 0 
    total = start
  else 
    total = source_array[0]
    i = 1 
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
      i += 1
  end 
  total
end 