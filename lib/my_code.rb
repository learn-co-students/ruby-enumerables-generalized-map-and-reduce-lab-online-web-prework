 def map(source_array)
  new_array = []
  i = 0
 while i < source_array.length do 
    product = yield(source_array[i]) 
    new_array << product
  i += 1
  end
  new_array
end
  
  
  def reduce (source_array,startingp=nil)
    if startingp 
      total = startingp
      i=0
    else
      total = source_array[0]
      i = 1
    end
    while i < source_array.length
      total = yield(total,source_array[i])
      i += 1
    end
    total
  end
      