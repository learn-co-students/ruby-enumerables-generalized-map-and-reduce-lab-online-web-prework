def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 
puts make_sandwich("grits", "abject terror") { |innards| "#{innards} on rye" }

def intros (name)
  yield(name)
  yield("Jack")
  yield("Paul")
end

intros("Manny") {|n| puts "My name is #{n}!"}