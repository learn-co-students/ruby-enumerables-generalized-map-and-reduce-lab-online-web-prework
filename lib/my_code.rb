# Your Code Here
def map(array)
  new_array = []
  array.length.times do |index|
    num = array[index]
    new_array << yield(num)
  end
new_array
end

def reduce(array, starting_point = 0)
  if starting_point
    new = starting_point
    i = 0
  else
    new = array[0]
    i = 1
  end

  while i < array.length
    n = array[i]
    new = yield(new, n)
    i += 1
  end
  new
end
