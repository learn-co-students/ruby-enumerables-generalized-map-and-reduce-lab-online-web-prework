# Your Code Here
def map(source_array)
  new_array = []
  for n in source_array
    new_array += [yield(n)]
  end
  new_array
end

def reduce(source_array, starting_value = 0)
  total = starting_value
  for n in source_array
    if n == true
      total = true
    end
    total = yield(total, n)
  end
  total
end
