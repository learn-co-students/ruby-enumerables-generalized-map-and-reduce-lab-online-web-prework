# Your Code Here

def map(set)
  new = []
  i = 0
  while i < set.length
    new.push(yield(set[i]))
    i += 1
  end
  new
end


def reduce(set, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = set[0]
    i = 1
  end
  while i < set.length
    accum = yield(accum, set[i])
    i += 1
  end
  accum
end