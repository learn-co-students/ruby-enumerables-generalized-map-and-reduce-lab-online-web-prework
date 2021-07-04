# Your Code Here
def map(source_array)
  newArray = []
  i = 0
  while i < source_array.length do
    newArray.push(yield source_array[i])
    i += 1
  end
  return newArray
end
  
def reduce(source_array, starting_point = 0)
  i = 0
  while i < source_array.length do
  yield (starting_point, source_array[i])
    i += 1
  end 
end 

  
