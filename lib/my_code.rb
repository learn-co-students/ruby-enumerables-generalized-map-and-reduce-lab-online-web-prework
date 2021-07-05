def my_own_map(array, block)
  i=0
  while i < array.length do
  yield
  i+=1
end
