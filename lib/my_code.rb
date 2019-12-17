require 'pry'
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

def reduce(arr, start = nil)
  if start
    i = 0
    sum = start
  else
    i = 1
    sum = arr[0]
  end
  while i < arr.length do
    # binding.pry
    sum = yield(sum, arr[i])
    # binding.pry
    i += 1
  end
  sum
end