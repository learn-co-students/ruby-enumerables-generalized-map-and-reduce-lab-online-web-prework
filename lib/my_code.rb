def map(array)
  new = []
  counter = 0

  while counter < array.length
    new.push(yield(array[counter]))
    counter += 1
  end
  new
end

def reduce(array, starting_point = nil)
  if starting_point
    red_res = starting_point
    counter = 0
  else
    red_res = array[0]
    counter = 1
  end

  while counter < array.length
    red_res = yield(red_res, array[counter])
    counter += 1
  end
  red_res
end
