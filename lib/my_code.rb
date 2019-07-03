# Your Code Here
def map(arr)
  new_arr = []
  i = 0
  while i < arr.length
    new_arr << yield(arr[i]) # yield current item to block; add return val of the block (product etc) to copy
    i += 1
  end
  new_arr
end

def reduce(arr, start = nil) # get them set up with correct parameters first

  ###########  start them off here if totally lost; it will pass first reduce test: ###########

  running_total = arr[0]   # grab first item; that's where you start adding
  i = 1   # start counting at i. only need to grab second item; have accounted for first

  # loop through array; pretty straightforward
  while i < arr.length
    # easiest to explain this next line as it relates to the addition tests (first two tests)
    # can go into the details of the last four tests after passing them, if you like. but prepare for some confusion around || and &&
    running_total = yield(running_total, arr[i]) # need to provide starting point and next item to add; use return val of block to update total
    i += 1   # keep incrementing
  end
  running_total

  ##### adjust code above to pass the second test (and subsequently pass the last four) #####
  ##### you'll need to add conditional logic to handle when a starting point is given   #####

  if start
    running_total = start
    i = 0   # if a start is given, you want to start at the beginning of the array when adding
  else
    running_total = arr[0]   # if a start is not given, the starting point is the first item in the array
    i = 1   # so you start at the second item when adding
  end

  while i < arr.length
    running_total = yield(running_total, arr[i]) # you are yielding to a block that contains a rule (addition or whatever), but you need to provide starting point and next item
    i += 1
  end
  running_total
end
