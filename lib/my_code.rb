# Your Code Here
def map(element1, &block)
  element1.map(&block)
  end

def reduce(elements, starting_point = nil, &block)
  if starting_point.nil?
    elements.reduce(&block)
  else
    elements.reduce(starting_point, &block)
  end
end