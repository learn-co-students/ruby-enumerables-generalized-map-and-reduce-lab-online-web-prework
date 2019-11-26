array = [1,2,3]

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


def reduce(source_array, starting_point = 0)
  i = 0
  value = starting_point
  while i < source_array.length do 
    value = yield(source_array[i], value)
    i += 1 
  end
value 
end 

truthy = [true, true, true, true]
falsy = [false, false, false]
any = [true, false, false, true]

reduce(array) {|m, n| m + n}
reduce(truthy).all? {|m, n| m}
reduce(any).any? {|m, n| m} 








  