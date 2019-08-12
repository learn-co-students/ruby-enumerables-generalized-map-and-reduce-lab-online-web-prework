# Your Code Here
def map(initial_array)
  mapped_array = [];
  counter = 0;

  while counter < initial_array.count do
    mapped_array << yield(initial_array[counter]);
    counter += 1;
  end

  return(mapped_array);
end

def reduce(initial_array, alpha = nil)
  if alpha
    the_beginning = alpha;
    counter = 0
  else
    the_beginning = initial_array[0];
    counter = 1;
  end

  while counter < initial_array.count do
    the_beginning = yield(the_beginning, initial_array[counter]);
    counter += 1;
  end

  return(the_beginning);
end

# MUST BE REVISITED LATER ON BECAUSE YIELD IS CONFUSING.
