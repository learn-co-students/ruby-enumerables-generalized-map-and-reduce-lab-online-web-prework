def map(source_array)
  i=0
  new_array=[]
  while i<source_array.length do
    new_array[i] = yield(source_array[i])
    i+=1  
  end
  new_array
end

def reduce(source_array, result=0)
  i=0
  while i<source_array.length do
    result = yield(source_array[i],result)
    i+=1
  end
  if result==nil
    result=false
  end
  result
end