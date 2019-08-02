def map(arg)
  new = []
  i = 0 
  while i < arg.length
  new << (yield(arg[i]))
  i += 1 
end
new
end
#map([1, 2, 3, -9]){|n| n * -1}

def reduce(arg, start=nil)
  if start
    total = start
    i = 0
  else
    total = arg[0]
    i = 1
  end
  while i < arg.length
    total = yield(total, arg[i])
    i += 1
  end
  total
end
#reduce(source_array){|memo, n| memo + n}