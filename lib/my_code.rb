def map(array)
  i = 0
  arr = []
    while i < array.length
      arr.push(yield(array[i]))
      i += 1 
    end
  return arr
end

def reduce(array, x=0)
  i = 0
    while i < array.length
      x = yield(x, array[i])
      i += 1 
      puts (array[i])
    end
  if x == 0
    return !!x
  else
    return x
  end
end