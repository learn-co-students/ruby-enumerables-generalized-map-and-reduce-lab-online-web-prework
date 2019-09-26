def map(array)
 #map return a new array of manipiputlated elemnts
 new=[]
 i = 0 
 while i < array.length 
 new.push yield(array[i]))
  i+=1
 end
 new 
end

def reduce(array, sv=nil)
  if sv
 num = sv
i=0
else
  num = array[0]
  i =1
end

while i < array.length
   sum =yield(sum, array[i])
   i+= 1 
  end
   sum
 end