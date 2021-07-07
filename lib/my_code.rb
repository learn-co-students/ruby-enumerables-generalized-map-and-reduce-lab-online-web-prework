# Your Code Here
def map(source)
  negative_array = []
  for i in source do
    negative_array.push(yield i)
  end
  negative_array
end

def reduce(source, starting_point = nil)
  pp source
  if starting_point
    sum = starting_point
    i = 0
  else
    sum = source[0]
    i = 1
  end
  while i < source.length
    sum = yield sum, source[i]
    i+=1
  end
  return sum
end
