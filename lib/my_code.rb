# Your Code Here
def map(arr)
  new_arr = []
  i = 0
  while i < arr.length
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end

def reduce(arr, start = nil)
  # no idea what's even going on here
  if start
    accum = start
    i = 0
  else
    accum = arr[0]
    i = 1
  end
  while i < arr.length
    accum = yield(accum, arr[i])
    i += 1
  end
  accum
end