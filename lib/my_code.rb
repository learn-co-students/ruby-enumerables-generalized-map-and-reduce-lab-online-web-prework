# Your Code Here
require 'pry'

def each
  i = 0
  while i < size
    yield at(i)
    i += 1
  end
end

def map(source_array, &block)
  new = []
  source_array.each do |opperate|
    new << block.call(opperate)
  end
  p new
end

def reduce (source_array, starting_point=0, &block)
  total = starting_point
 # binding.pry
  source_array.each do |opperate|
   # binding.pry
    if opperate.is_a? Integer
      total += opperate
    elsif opperate == false
      total = false
    elsif source_array.include?(true)
      total = true
    end
  end
  #binding.pry
  p total
end