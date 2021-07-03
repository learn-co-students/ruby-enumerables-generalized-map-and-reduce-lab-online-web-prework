# Your Code Here
def map(source_array)
  newArray = []
  i = 0 
  while i < source_array.length do
    newArray.push(source_array[i] * -1)
  end
  yield
end

map() do
  |innards|
  return new_array
end


