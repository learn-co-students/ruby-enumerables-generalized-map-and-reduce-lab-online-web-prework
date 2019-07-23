# Your Code Here
# def map(source_array)
#   source_array.map{|n| n * -1}
  
# end 

def map(source_array) 
	new = [] 
	i = 0  
	while i < source_array.length do    
		new.push(yield(source_array[i]))    
		i += 1  
	end 
	new
end

#expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])

def reduce(source_array, starting_point = nil)
  if starting_point
    i = 0 
    memo = starting_point
  else 
    i = 1 
    memo = source_array[0]
  end
  
  while i < source_array.length do    
		memo = (yield(memo, source_array[i]))    
		i += 1 
		end 
		memo
	end 
  
  
  
  
  
  