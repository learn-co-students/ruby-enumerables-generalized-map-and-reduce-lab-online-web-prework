def map(array)
  new = []
  array.each do |index|
    new << yield(index)
  end
  new
end

def reduce(array, start = 0)
  num = array[0]
  if start != 0
    num += start
  end
  count = 1
  while count < array.length do
    num = yield(num, array[count])
    count += 1
  end
  num
end
