def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  yield(base)
end
 
make_sandwich("gator", "gumbo") do |innards|
  "#{innards} on rye"
end #

map_to_negativize ({1, 2, 3, -9})
