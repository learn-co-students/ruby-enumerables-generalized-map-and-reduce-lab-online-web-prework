# Your Code Here

def map(array)
  results = []
  array.length.times do |idx|
    results << yield(array[idx])
  end
  results
end

def reduce(array,starting_value=nil)
  
  if(starting_value)
    total = starting_value
    i=0
  else
    total = array[0]
    i=1
  end
  
  while i < array.length do
    total = yield(total,array[i])
    i+=1
  end
  total
end

#[false,nil,nil,nil,true]