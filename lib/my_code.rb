def map (source_array)
  counter = 0
  negetive_array = []
while counter < source_array.length do
  negetive_array << yield(source_array[counter])
  counter += 1
end
negetive_array
end

def reduce (source_array)
