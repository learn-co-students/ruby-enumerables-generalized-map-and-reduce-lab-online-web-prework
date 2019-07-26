# def my_map(array)
#   base = map{ |i| i*-1 }; { |i| i }; { |i| i*2 }; { |i| i*i }
#   yield (base)
#   end
def map(array) 
  new = []
  i = 0
  while i < array.length do
    new.push( yield(array[i]) )
    i += 1
  end
  return new
end
 
def reduce(source_array, starting_point = 0) 
  if starting_point != 0 
    a = starting_point
    i = 0 
  else
    a = source_array[0]
    i = 1 
  end 
  while i < source_array.length do
    a = yield(a, source_array[i])
    i += 1
  end
  a
end


#expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])

# def reduce_to_total(source_array, starting_point = 0)
 
#   total = source_array.reduce(starting_point) { |sum, n| sum + n }
#   return total 
# end

# def reduce_to_all_true(source_array)

#   i = 0 # set up a i for the enumeration of the passengers collection
#   while i < source_array.length do # a loop for each passenger
#     # Stop enumerating and return true if any passenger is
#     # coughing or sneezing
#     if (source_array)[i] == false
#       return false
#     end
#     i += 1
#   end
#   return true
# end
 