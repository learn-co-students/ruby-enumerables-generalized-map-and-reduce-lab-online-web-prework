
def map (array)
  new = []
  i = 0
  while i < array.length do
    new.push( yield(array[i]) )
    i += 1
  end
  return new
end

def reduce (array, start=nil)
  i = 0
  if start
    new = start
  else
    new = array[0]
    i += 1
  end


  while i < array.length do
    new = yield(new, array[i])
    i += 1
  end
  new
end
