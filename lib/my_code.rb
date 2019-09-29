def map(source_array)
  new = []
  i = 0 
  while i < source_array.lenght do
    new.push( source_array[i] * -1 )
    i += 1
  end
  return new
end