def map(source_array)
  new_array = []
  source_array.length.times do |index|
    new_array.push(yield(source_array[index]))
    #take the element at whatever index we're at and yield it to a block of code passed in when the method is called. Then we'll push that manipulated variable into our new array.
  end
  return new_array
end

def reduce(source_array, starting_value = nil)
  if starting_value
    i = 0
  accumulator = starting_value
else
  i = 1
  #just how reduce/acc method works, don't want to add the first element twice(think of the hill).
  accumulator = source_array[0]
  #assume it's the first item in the array because no other starting value was given.
end
  while i < source_array.length do
    accumulator = yield(accumulator, source_array[i])
    i += 1
  end
  return accumulator
end