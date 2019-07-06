# Your Code Here
def generalized_map(array)
  new =[]
  i = 0
  while i < array.length do
    yield
    i += 1
  end
  return new
end

generalized_map(array) { |n| n * -1 }