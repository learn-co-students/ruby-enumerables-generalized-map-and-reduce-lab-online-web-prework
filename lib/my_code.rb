# Your Code Here


def map(arr)
  i = 0
  map = []
  while i < arr.size do
    map << yield(arr[i])
    i += 1
  end
  map
end 

def reduce(arr, start = nil)
  i = start ? 0 : 1
  reduce = start || arr[0]
  while i < arr.size do
    reduce = yield(reduce,arr[i])
    i += 1 
  end 
  reduce 
end 