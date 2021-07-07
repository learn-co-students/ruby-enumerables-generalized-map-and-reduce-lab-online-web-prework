def map (source_array)
  counter = 0
  negetive_array = []
while counter < source_array.length do
  negetive_array << yield(source_array[counter])
  counter += 1
end
negetive_array
end

def reduce(array,sv = nil)
  if sv
    sum = sv
      i = 0
  else
    sum = array[0]
    i = 1
end
while i < array.length
    sum = yield(sum,array[i])
    i += 1
end
sum
end
