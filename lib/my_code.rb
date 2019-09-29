# Your Code Here
# MAP-LIKE EXERCISES
def map_to_negativize(source_array)
  source_array.map { |element| element * -1 }
end

def map_to_no_change(source_array)
  source_array.map { |element| element }
end

def map_to_double(source_array)
  source_array.map { |element| element * 2 }
end

def map_to_square(source_array)
  source_array.map { |element| element ** 2 }
end

# REDUCE-LIKE EXERCISES
def reduce_to_total(source_array, starting_point*)
  source_array.reduce(starting_point, :+)
end

def reduce_to_all_true(source_array)
  source_array.all?
end

def reduce_to_any_true(source_array)
  source_array.any?
end