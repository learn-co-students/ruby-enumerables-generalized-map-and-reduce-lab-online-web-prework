# Your Code Here
def map(source_array)
  i = 0
  newArray  = []
  while i < source_array.length 
    newArray.push(yield(source_array[i]))
    i += 1
  end
  newArray
end

def reduce(source_array, starting_value=nil)
  i = 0
  if starting_value 
    total = starting_value
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