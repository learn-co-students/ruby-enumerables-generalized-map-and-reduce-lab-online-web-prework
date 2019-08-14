# Your Code Here
def map(source_array)
  counter = 0
  new = []
  while counter < source_array.length do
    new.push(yield(source_array[counter]))
    counter += 1
  end
  new
end

def reduce(source_array, starting_point = nil)
  if starting_point
    s = starting_point
    counter = 0
  else
    s = source_array[0]
    counter = 1
  end
  while counter < source_array.length do
    s = yield(s, source_array[counter])
    counter += 1
  end
  s
end

