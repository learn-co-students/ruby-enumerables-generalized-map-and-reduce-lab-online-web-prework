def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new[i] = yield source_array[i]
    i+=1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  source_array.length.times do |i|
    starting_point = yield(starting_point, source_array[i])
    end
    if starting_point == 0
      return true
    end
    starting_point
end
