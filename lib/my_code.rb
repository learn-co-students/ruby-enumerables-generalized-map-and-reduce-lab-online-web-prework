# Your Code Here
def map(source)
  result = []
  i = 0 
  while i < source.length do 
    result << yield(source[i])
    i += 1 
  end 
  result
end 

def reduce(source, start = nil)
  if start 
    result = start 
    i = 0 
  else 
    result = source[0]
    i = 1 
  end 
  while i < source.length do
    result = yield(result, source[i])
    if result == nil # accounts for (nil && false) == nil
      result = false 
    end 
    i += 1 
  end 
  result
end
  