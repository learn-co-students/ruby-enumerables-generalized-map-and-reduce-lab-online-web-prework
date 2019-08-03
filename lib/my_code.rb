def map(source_array)
  source_array.length.times do |index|
    source_array[index] = yield(source_array[index])
  end
  source_array
end


def reduce(source_array, starting_point = 0)
  reduction = starting_point
  source_array.length.times do |index|
    reduction = yield(reduction, source_array.pop)
  end
  reduction
end