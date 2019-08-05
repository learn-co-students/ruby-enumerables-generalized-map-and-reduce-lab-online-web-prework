# Your Code Here
def map(array)
  new = []
  for x in array do
    new.push(yield(x))
  end 
  return new
end

def reduce(array, starting = 0)
  for x in array do
    y = yield(x, starting)
    starting = y
  end
  if y == nil
      return false
  end
  return y
end