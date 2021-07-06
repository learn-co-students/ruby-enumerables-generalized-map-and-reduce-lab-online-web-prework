# Your Code Here
def map(array) 
  new_array= []
  counter= 0 
  while counter < array.length do 
    new_array << (yield(array[counter]))
    counter +=1 
  end 
  new_array 
end 

def reduce(source_array, start = nil)
  if start
    totalv = start
    counter = 0
  else
    totalv = source_array[0]
    counter= 1
  end

   while counter < source_array.length
    totalv = yield(totalv, source_array[counter])
    counter += 1
  end
  totalv
end 