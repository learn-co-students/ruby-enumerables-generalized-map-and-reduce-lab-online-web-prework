def my_own_map
  
  do
    map[1,2,3,-9]{|n| n*-1}
  end
  
  do
    dune=["pau","gurney","vladimir", "jessica", "chani"]
    map(dune){|n|n}
  end
  
  do
    map[1,2,3,-9]{|n| n*2}
  end
  
  do 
    map[1,2,3,-9]{|n| n*n}
  end
  
  do
    source_array=[1,2,3]
    reduce(source_array){|memo,n| memo+n}
  end
  
  do
    source_array=[1,2,3]
    starting_point=100
    reduce(source_array,starting_point){|memo,n| memo+n}
  end
  
  do 
    source_array=[1,2,true,"razmatazz"]
    reduce(source_array){|memo,n| memo && n}
  end
  
  do
    source_array[falsey,nil,nil,nil,true]
    reduce (source_array){|memo,n| memo||n}
  end
   
   do 
     source_array[fasle,nil,nil,nil]
     reduce(source_array){|memo,n| memo && n}
   end
   
