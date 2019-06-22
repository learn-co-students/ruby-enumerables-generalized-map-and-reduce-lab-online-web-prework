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