# Your Code Here
def map(array)
  new  = []
  i = 0
  while i < array.length
  new.push (yield (array[1]))
 end
 new
end

def reduce(array, sv=nil)
  if sv
    num1 = sv
    i = 0
  else
    num1 = array[0]
    i = 1
end
  
  while i < array.length
   sum =  yield (sum, array[i])
   i += 1
end
 sum
end 