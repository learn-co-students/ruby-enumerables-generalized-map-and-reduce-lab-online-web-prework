# Your Code Here

method_using_block { puts "hi" }
 
method_using_block do
  puts "hi"
end


def make_sandwich(element1, element2)
end
 
def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  puts base
  yield
  base
end
 

def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  yield(base)
end
 

def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 



