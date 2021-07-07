# Your Code Here
def map(array)
  array.length.times { |index|
    array[index] = yield(array[index])
  }
  array
end

def reduce(array, starting = 0)
  array.length.times { |index|
  if array[index]
    starting  = yield(array[index], starting)
  else
    starting = false
  end
  }
  starting  
end