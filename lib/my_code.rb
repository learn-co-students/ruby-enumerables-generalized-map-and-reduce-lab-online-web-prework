def map(source_array)
  source_array.length.times do |index|
    source_array[index] = yield(source_array[index])
  end
  source_array
end


def reduce(source_array, starting_point = nil)
  if starting_point
    reduction = starting_point
    counter = 0
  else
    reduction = source_array[0]
    counter = 1
  end
  while counter < source_array.length do
    reduction = yield(reduction, source_array[counter])
    counter += 1
  end
  reduction
end