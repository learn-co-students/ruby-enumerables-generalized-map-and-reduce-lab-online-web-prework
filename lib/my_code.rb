# Your Code Here
def map(arr)
  new_arr = []
  i = 0
  while i < arr.length
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end

def reduce(arr, start = nil) # get them set up with correct parameters first

  ##########  start them off here, it will pass first reduce test: ###########
  running_total = arr[0]   # grab first item, that's where you start adding
  i = 1 # start counting at i; only need to add next item, have accounted for first

  while i < arr.length
    running_total = yield(running_total, arr[i]) # easiest to explain this bit to them as far as the addition tests go (first two tests); can go into the details of the last four tests after passing them; if you like
    i += 1 # keep incrementing
  end
  running_total

  ##### adjust code above to pass the second test (and subsequently pass the last four) #####
  ##### you'll need to add conditional logic to handle when a starting point is given #####

  if start
    running_total = start
    i = 0   # if a start is given, you want to start at the beginning of the array when adding
  else
    running_total = arr[0]   # if a start is not given, the starting point is the first item in the array
    i = 1   # so you start at the second item when adding
  end

  while i < arr.length
    running_total = yield(running_total, arr[i]) # you are yielding to a block that contains a rule (addition or whatever), but you need to provide starting point and next item to add
    i += 1
  end
  running_total
end
