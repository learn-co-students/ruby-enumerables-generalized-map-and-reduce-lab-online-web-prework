# Your Code Here

def map(array)
  new = []
  counter = 0 
  while counter < array.length do 
    new.push(yield(array[counter])) 
    counter +=1 
  end 
  return new  
end 

def reduce(source_array,start=nil)
  if start 
    counter = 0 
    total = start
  else 
    total = source_array[0]
    counter = 1 
  end
  while counter < source_array.length do
    total = yield(total,source_array[counter])
      counter +=1
  end 
  total
end 