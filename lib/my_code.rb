# Your Code Here
def map(source_array)
  new_array = []
  index = 0 
  while index < source_array.length do 
    new_array.push(yield(source_array[index]))
    index += 1
  end
  new_array
end 

def reduce(source_array, start_value = nil)
  if start_value
    running_total = start_value
    index = 0 
  else 
    running_total = source_array[0]
    index = 1 
  end
  while index < source_array.length do
    running_total = yield(running_total, source_array[index]) 
    index += 1 
  end 
  running_total
end 