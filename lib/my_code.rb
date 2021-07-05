# Your Code Here

def map(array)
  new = []
  i = 0
  while i < array.length do
    new[i] = yield(array[i])
    i += 1
  end
  new
end

def reduce(array, starting_point=0)
  i = 0
  
  while i < array.length do
    starting_point = yield(array[i],starting_point)
    i += 1
  end
  if array.any? {|n|n.class != Integer}
    starting_point = !!starting_point
    array[i] = !!array[i]
  end
  starting_point
end


