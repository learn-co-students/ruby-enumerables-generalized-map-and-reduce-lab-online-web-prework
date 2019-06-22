# Your Code Here
def map (array)
  yield (new_array << array)
end

map(array) { |n| n * -1}
