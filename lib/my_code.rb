# Your Code Here
# def own_map(array)
#   final_array = []
#   counter = 0
#   while counter < array.size do
#     yield(final_array.push(array[counter] * -1))
#      counter += 1
# end
# final_array{|innards| {innards}}
# end

def map (array)
new = []
counter = 0
while counter < array.length
  new.push(yield(array[counter]))
counter += 1
end
new
end


def reduce(array, sv=nil)
  if sv
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end
