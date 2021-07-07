def map(array)
  new_arr = []

  i = 0
   while i < array.length do
    new_arr << yield(array[i])
    i += 1
  end

 return new_arr  
end
#-------------------------

def reduce(array, starting_point=nil)
  if starting_point
    new_arr_2 = starting_point
    i = 0
  else
   new_arr_2 = array[0]
    i = 1
  end
  while i < array.length
    new_arr_2 = yield(new_arr_2, array[i])
    i += 1
  end
  new_arr_2
end