# Your Code Here
def map(array)
  new =[]
  i = 0
  while i < array.length do
    result = yield(array[i])
    new << result
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
      reduce_total = 0
      i = 0
      while i < source_array.length do      
       reduce_total = yield(source_array, starting_point)
        i += 1
      end
  reduce_total
end