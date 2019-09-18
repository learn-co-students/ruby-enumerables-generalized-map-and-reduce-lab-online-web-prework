# Your Code Here
def map(array)
  new_arr = []
  count = 0
  while count < array.length
   new_arr.push(yield(array[count]))
   count += 1
  end
new_arr
end

def reduce(array, sv = false)
  if sv
    total = sv
    i = 0
  else 
    total = array[0]
    i = 1
  end
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
  total
end
