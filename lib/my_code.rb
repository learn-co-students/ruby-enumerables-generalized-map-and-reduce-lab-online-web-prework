# Your Code Here
def map(s)
  array1 = []
  i = 0
  while i < s.length
    array1.push(yield(s[i]))
    i += 1
  end
  array1
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while
    i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
accum
end