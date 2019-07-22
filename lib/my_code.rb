def map(array)
  result_array = []
  i = 0
  
  while i < array.length do
    result_array[i] = yield(array[i]) #unique work
    i += 1
  end
  
  return result_array
end

def reduce(array, starting_point = 0)
  result = starting_point
  i = 0
  
  while i < array.length do
    result = yield(result, array[i])
    i += 1
  end
  
  return result == 0 ? true : result
  
end