
def map(array)
  new_array =[]
  counter = 0
  while counter < array.length do
  new_array[counter] = yield(array[counter])
  counter += 1
  end
  return new_array
end

def reduce(array, starting_value = nil)
  value = starting_value
  counter = 0
  if value == nil
    value = array[0]
    counter += 1
  end
  while counter < array.length do
    value = yield(value, array[counter])
    counter += 1
  end
  return value
end