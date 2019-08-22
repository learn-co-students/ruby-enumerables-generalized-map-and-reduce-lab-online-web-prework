# Your Code Here

def map(arr)
  i = 0
  new_arr = []
  while i < arr.length do
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end

def reduce(arr, start = 0)
  i = 0
  while i < arr.length do
    start = yield(arr[i], start) || false
    i += 1
  end
  start
end