# Your Code Here

def map(array)
  new_array = []
  counter = 0 
  while counter < array.length 
  new_array << yield
  counter += 1
  end
  return new_array
end


