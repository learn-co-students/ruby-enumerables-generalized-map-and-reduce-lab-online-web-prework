# Your Code Here
def map(array)
  out = []
  array.each do |el|
    out << yield(el)
  end
  out
end

def reduce(array, start = nil)
  # If start is defined behave normally, otherwise set start to the first element and skip iterating over it
  i, start = start == nil ? [1, array[0]] : [0, start]
  while i < array.length do
    start = yield(start, array[i])
    i += 1
  end
  start
end