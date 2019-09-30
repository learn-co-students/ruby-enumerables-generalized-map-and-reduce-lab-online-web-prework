#map returns a new array with manipulated values
def map(source_array)
  i= 0
  negative_array =[]
while i < source_array.count do
  negative_array.push(yield (source_array[i]))
  i += 1
end
negative_array
end 

def reduce(source_array, sp=nil)
  if sp
    total = sp
    i = 0 
  else 
    total = source_array[0]
    i = 1 
  end
  while i < source_array.length
    total = yield(total, source_array[i])
    i += 1 
  end
  total
end 