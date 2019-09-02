def my_own_map(array)
  array = [1, 2, 3, -9]
  n = -1
  while n < array.length do
    array.push(array * [n])
    n += 1
  end
  return array
end
end 
