def map(array)
  result = []
  i = 0
  while i < array.size
    result[i] = yield(array[i])
    i += 1
  end
  result
end


def reduce(array, x = 0)
result = x
i = 0
while i < array.size
  result = yield(result, array[i])
  if yield(result, array[i]) == !true
    return false
  end
  i += 1
end
if result == 0
  return true
end
result
end


#def reduce(array)
#  i = 0
#  while i < array.size
#    if array[i] == true
#      return true
#    end
#    i += 1
#  end
#  return false
#end
