# Your Code Here
def map(array)
  counter = 0 
  newArray = []
  while counter < array.length do 
    
  newArray.push(yield(array[counter]))
  counter += 1
end
newArray
  
end




def reduce(array, starting=0)
  counter = 0 
  sum = starting
  while counter < array.length do 
    
    sum = yield(array[counter] , sum)
    
    counter += 1
    
  end
  if sum == nil
    return false
  end
  return sum
end