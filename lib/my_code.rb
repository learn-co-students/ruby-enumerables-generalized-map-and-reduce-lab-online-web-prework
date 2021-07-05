def map(b)
  new = []
  n = 0
  while n < b.length do
    new.push(yield(b[n]))
    n += 1
  end
  new
end

def reduce(b, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = b[0]
    i = 1
  end
  while i < b.length
    accum = yield(accum, b[i])
    i += 1
  end
  accum
end
