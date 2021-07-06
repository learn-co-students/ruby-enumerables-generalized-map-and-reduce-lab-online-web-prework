def map(array)
     new_array = []
     array.each do |num|
       new_array.push(yield(num)) 
   end
   return new_array
end

def reduce(array,sv = nil)
  if sv
    num1 = sv
    i=0 
  else
    num1 = array[0]
    i = 1
  end
  while i < array.length 
  num1 = yield(num1,array[i])
  i+=1 
  end
  num1
end