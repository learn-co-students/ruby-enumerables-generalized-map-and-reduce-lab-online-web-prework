# Your Code Here
def map(array)
  a = []
  i = 0
  
  while i < array.length do 
   a.push(yield(array[i]))
    i += 1
  end 
  a 
end

def reduce(array, x = nil)
  if x 
    total = x
    i = 0 
  else
    total = array[0]
    i = 1
  end
  while i < array.length do 
    total = yield(total, array[i])
    i += 1 
  end
  total
end
  
