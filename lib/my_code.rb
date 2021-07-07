def map(array)
counter = 0
new_array = []

while counter < array.length do
  new_array <<  yield(array[counter])
   counter += 1 
  end
 new_array
end



def reduce(array, sv=nil)
  if sv
    sum = sv
    i = 0 
  else
    sum = array[0]
    i = 1 
  end
  while i < array.length do
   sum = yield(sum, array[i])
    i += 1 
  end
  sum
end

