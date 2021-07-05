# Your Code Here
def jose_to_array(jose_array)
  new = []
  i = 0
  while i < jose_array.length do
    new.push( jose_array[i] * -1 ) # <== Unique work
    i += 1
  end
  return new
end
method_using_jose { puts "carnal" }
 
# Is the same as...
method_using_block do
  puts "carnal"
end