

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield source_array[i])
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  if starting_point = 0
    i = 1
    sum = source_array[i]
  else
    i = 0
    sum = starting_point
  end
  while i < source_array.length do
    yield(sum) += yield source_array[i]
    i += 1
  end
  return sum
end

# def reduce_true_false(source_array)
#   i = 0
#   while i < source_array.length do
#     if source_array[i] == false
#       yield false
#     end
#     i += 1
#   end
#     yield true
# end
#
# def reduce_to_any_true(source_array)
#   i = 0
#   while i < source_array.length do
#     if source_array[i] == true
#       yield true
#     end
#     i += 1
#   end
#   yield false
# end
