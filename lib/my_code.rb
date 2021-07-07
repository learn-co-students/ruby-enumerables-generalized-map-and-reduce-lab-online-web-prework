# Your Code Here
def map(array)
  i = 0
  new = []
  while i < array.length
  new << yield(array[i])
  i += 1
  end
  new
end

def reduce(array, starting_point = nil)
  if starting_point
    accumulator = starting_point
  i = 0
else 
  accumulator = array[0]
  i = 1
end
  while (i < array.length)
    accumulator = yield(accumulator, array[i])
    i = i + 1
  end
  return accumulator
end