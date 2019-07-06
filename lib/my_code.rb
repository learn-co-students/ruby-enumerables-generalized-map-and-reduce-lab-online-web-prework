def map(array)
  new_array = []
  i = 0
    while i < array.length
      new_array.push(yield(array[i]))
      i += 1
    end
  new_array
end

def reduce(array,start = nil)
  if start
    new_array = start
    i = 0
  else
    new_array = array[0]
    i = 1
  end
  
  while i < array.length
    new_array = yield(new_array, array[i])
    i += 1
   end
  new_array
end