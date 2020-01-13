# Your Code Here
def map(array)
  new=[]
  i=0
  while i<array.size
    new << yield(array[i])
  i+=1
  end
  new
end


def reduce(array, starting_point=nil)
  if starting_point
    sum=starting_point
    i=0
  else
    sum=array[0]
    i = 1
  end
  while i < array.size
    sum=yield(sum, array[i])
    i+=1
  end
  sum
end
