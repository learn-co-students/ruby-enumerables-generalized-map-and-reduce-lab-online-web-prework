# Your Code Here
def map_to_negativize(source_array)
  source_array.map{|a| a*(-1)} 
end 

def map_to_no_change(source_array)
  source_array.map{|a|  a*1}
end 

def map_to_double(source_array)
  source_array.map{|a| a*2}
end 

def map_to_square(source_array)
  source_array.map{ |a| a**2}
  
def reduce_to_total(source_array, starting_point)
   source_array.map{|a| a+= starting_point}
end 

def reduce_to_all_true(source_array)
  source_array.reduce(0){|a,b| a+b}
end 

def reduce_to_any_true(source_array)
  source_array.reduce(:+)
end 
  
  
  
  
  
  
  
  