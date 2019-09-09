def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end   
  new
end


def reduce(array, sv=nil)
  if sv
    now = sv
    i = 0
  else 
    now = array[0]
    i = 1
  end  
  while i < array.length
    now = yield(now, array[i])
    i += 1
  end
  now
end