# Your Code Here
def map(array) 
  new_array = []
  i = 0 
  while i < array.size 
    new_array << (yield(array[i]))
    i += 1 
  end 
  new_array
end

def reduce(array, starter=nil) 
  if starter 
    new_value = starter 
    i = 0
  else 
    new_value = array[0] 
    i = 1
  end

  while i < array.size 
    new_value = yield(new_value, array[i])
    i += 1 
  end 
  new_value
end

