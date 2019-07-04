def map(array)
  new_array = []
   array.length.times do |index|
    b = yield (array[index])
    new_array << b
    end

new_array
end







#closest yet. having difficulty with boolean aspect.
def reduce (source_array, starting_point = nil)

if starting_point
total= starting_point
i= 0
else
  total= source_array[0]
  i=1
end

while source_array.length > i 
  
  total= yield(total, source_array[i])
  i= i+1
  end
total
end
