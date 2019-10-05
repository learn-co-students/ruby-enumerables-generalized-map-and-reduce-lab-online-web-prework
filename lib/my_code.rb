# Your Code Here
def map (array)
  new = []
  count = 0  
  while count < array.length 
  new << (yield(array[count]))
  count += 1
  end
  new 
end 

def reduce(array,start_value=nil)
  if start_value
    total = start_value
    count = 0 
  else  
    total = array[0]
    count = 1 
  end
  while count < array.length
  total =  yield(total, array[count])
  count +=1
  end
total
end

