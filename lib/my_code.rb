require 'pp'
# Your Code Here
def map(source_array)
  new_array= []
  row = 0 
  while row <source_array.length do 
    new_array.push(yield(source_array[row]))
    row += 1 
  end
  new_array
end

def reduce(source_array, start = 0  )
  row = 0
  sum = start 
  value= 0 
  while row < source_array.length do 
    value= yield(source_array[row], value)
    if value == false
      return false
    end
    row += 1 
  end
  if value != false && value !=true 
      value += sum
  else return value 
  end 
end