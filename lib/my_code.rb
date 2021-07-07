# Your Code Here
#require "pry"
def map(array)
  new_array = []
  counter = 0 
  while counter < array.length 
  new_array << yield(array[counter])
  counter += 1
  #binding.pry
  end
  return new_array
end

def reduce(array, starting_point = 0)
  sum = 0
  array.each
  sum << yield(array[counter], starting_point = 0)
  end
  return sum 
end
