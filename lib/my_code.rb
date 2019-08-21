def neg_num ([1, 2, 3, -9])
  map { |n| n * -1 }
end
p neg_num ([1, 2, 3, -9])

def map_to_square([1, 2, 3, -9])
  map { |n| n * 2}
end
p map_to_square ([1, 2, 3, -9])

