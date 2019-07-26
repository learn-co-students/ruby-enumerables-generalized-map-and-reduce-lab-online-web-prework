def make_sandwich(elelment1, element2)
  base = "A #{elelment1} and #{element2}"
  puts base
  yield
  base
end

make_sandwich("chicken", "a sense of malaise") do |innards|
  puts "making some tasty stuff..."
