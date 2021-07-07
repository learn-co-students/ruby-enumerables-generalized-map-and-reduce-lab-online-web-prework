def map(array)
  new = []
  i = 0 
  while i < array.size do 
   new.push(yield(array[i]))
   i += 1 
 end 
 new
end



def reduce(source_array, value = nil)
 if value 
    x = value 
   i = 0 
 else
   x = source_array[0]
   i = 1
  end
  while i < source_array.length do 
    x = yield(x, source_array[i])
    i += 1
  end
  return x
end

