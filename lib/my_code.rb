
array = [1,2,3]
truthy = [true, false, false, true]
falsy = [false, false, false]

def map(source_array)
  i = 0
  newarray = []
  while i < source_array.length do
    newarray << yield(source_array[i])
    i += 1 
  end
newarray
end

map(array) {|n| n * -1}
map(array) {|n| n}
map(array) {|n| n * 2}
map(array) {|n| n ** 2}

def reduce(source_array, starting_point = nil)
  if starting_point
    value = starting_point
    i = 0 
  else 
    value = source_array[0]
    i = 1 
  end 
  while i < source_array.length do 
    value = yield(value, source_array[i])
    i += 1 
  end 
value
end 

reduce(array) {|m, n| m + n}
reduce(truthy) {|m, n| m && n}
reduce(falsy) {|m, n| m || n}



