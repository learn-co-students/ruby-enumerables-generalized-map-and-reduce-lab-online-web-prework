# Your Code Here
def map(array)
  out = []
  array.each do |el|
    out << yield(el)
  end
  out
end

def reduce(array, start = nil)
  if start == nil
    i = 1
    start = array[0]
  else
    i = 0
  end
  while i < array.length do
    start = yield(start, array[i])
    i += 1
  end
  start
end