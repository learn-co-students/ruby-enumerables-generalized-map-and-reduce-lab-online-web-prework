# Your Code Here
def map(array)
 new_a = []
  i = 0
  while i < array.size do
    new_a.push(yield(array[i]))
    i += 1
  end
  new_a
end
 

def reduce(array, sv = nil)
    if sv 
      sum = sv
      i = 0
    else
      sum = array[0]
      i = 1
    end
    while i < array.size 
      sum = yield(sum, array[i])
      i += 1
    end
    sum
  end
  



