def my_own_map(array)
  array = [1, 2, 3, -9]
  n = 0
  while n < array.length do
    array.push(yield(array[n]))
    n += 1
  end
  array
end
