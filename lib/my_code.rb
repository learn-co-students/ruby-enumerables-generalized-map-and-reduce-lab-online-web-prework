# Your Code Here
def map(array)
  new_array = []
  counter = 0
  for i in array do
    new_array << yield(array[counter])
    counter += 1
  end
  new_array
end
    
def reduce(array, stpt = nil)
  if stpt
    sum = stpt
    counter = 0
  else
    sum = array[0]
    counter = 1
  end
  
  while counter < array.length do
    sum = yield(sum, array[counter])
    counter +=1
  end
  sum
end
    
    
