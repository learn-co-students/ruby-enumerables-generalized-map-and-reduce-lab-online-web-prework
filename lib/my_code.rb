# Your Code Here
 def map(array)
   counter = 0
   new_array = []
   while counter < array.length
    new_array << yield(array[counter])
    counter += 1
   end
   new_array
 end
 
 def reduce(array, start = 0)
   counter = 0
   answer = start
   while counter < array.length
     answer = yield(array[counter], answer)
     counter += 1
   end
if answer 
  answer
else
  false
end
end