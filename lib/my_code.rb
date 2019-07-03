# Your Code Here
def map(source_array)
  new_array = []
  source_array.each do |i|
    new_array.push(yield i)
  end
  new_array
end

def reduce(ary, start=nil)
  if start
    sum = start
    i = 0
  else
    sum = ary[0]
    i = 1
  end
  while i < ary.length
    sum = yield(sum, ary[i])
    i += 1
  end
  sum
end 