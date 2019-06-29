def map(array)
 i = 0 
 new_array = [] 
 while i < array.length 
 new_array.push(yield(array[i])) 
 i +=1
 end
 new_array
 end 
 
 def reduce(source_array, value = nil)
   if value 
     total = value
     i = 0
  else 
    total = source_array[0]
    i = 1
  end 
   while i < source_array.length 
    total = yield(total, source_array[i])
    i +=1
   end 
   total 
 end 