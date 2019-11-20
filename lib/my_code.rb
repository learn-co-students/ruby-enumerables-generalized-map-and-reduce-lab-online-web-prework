def map(array) 
  new= []
  i = 0 
  while i < array.length 
  new.push(yield(array[i]))
   i += 1 
  end
    new
end
  

def reduce(array, sv=nil)
  if sv 
    sum = sv
    i = 0 
  else 
    sum = array[0]
    i = 1
  end
    while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end


def make_sandwhich(element1, element2)
  base = "A #{element1} and #{element2}"
  yield(base) 
end

make_sandwhich("gator", "gumbo") do |innards|
  "#{innards} on rye"
end

def make_sandwhich(element1, element2)
  yield("A #{element1} and #{element2} sandwhich")
end

make_sandwhich("grits","abject terror") { |innards|
  "#{innards} on rye"
}