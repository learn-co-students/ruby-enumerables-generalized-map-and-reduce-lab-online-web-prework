require 'pry'

def map(array)
  i = 0
  arr = []
  while i < array.length
    arr << yield(array[i])
    i = i + 1
  end

  return arr
end

def reduce(array, start = nil)
  i = 0
  
  if start != nil
    value = start
  else
    value = array[0]
    i = 1 
  end
  
  while i < array.length
    value = yield(value, array[i])
    i = i + 1
  end
  
  return value
  
end 