# Your Code Here
require 'pry'

def map(source_array)
  new = []
  source_array.each do |index|
    new << yield(index)
  end
new
end

def reduce(source_array, starting_point = false)
  if starting_point
    sv = starting_point
    sum = sv
    i = 0
  else
    sum = source_array[0]
    i = 1
  end
  
  while i < source_array.length
    sum  = yield(sum, source_array[i])
    i += 1
  end

sum
end