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

def reduce(source_array, starting_point = nil)
      reduce_total = source_array[0]
      i = 1
      if starting_point != nil
          reduce_total = starting_point 
          i = 0
      end
      while i < source_array.length do      
       reduce_total = yield(reduce_total, source_array[i])
        i += 1
      end
  reduce_total
end