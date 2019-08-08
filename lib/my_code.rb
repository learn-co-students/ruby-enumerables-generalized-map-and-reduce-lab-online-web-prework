# Your Code Here
def 'my own map' (element1, element2)
  yield ("A #{element1} and #{element2} my own map")
end

when "returns an array with all values made negative" do
  'my own map'(map, [1, 2, 3, -9])

when "returns an array with the original values" do
  dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
  expect(map, dune)

when "returns an array with the original values multiplied by 2" do
    expect(map, [1, 2, 3, -9])

when "returns an array with the original values squared" do
    expect(map, [1, 2, 3, -9])
  end

def 'my own reduce'
when "returns a running total when not given a starting point" do
    source_array = [1,2,3]
    expect(reduce, source_array)

when "returns a running total when given a starting point" do
    source_array = [1,2,3]
    starting_point = 100
    expect(reduce(source_array, starting_point)

when "returns true when all values are truthy" do
    source_array = [1, 2, true, "razmatazz"]
    expect(reduce, (source_array))

when "returns false when any value is false" do
    source_array = [1, 2, true, "razmatazz", false]
    expect(reduce(source_array))

when "returns true when a truthy value is present" do
    source_array = [ false, nil, nil, nil, true]
    expect(reduce, (source_array))

when "returns false when no truthy value is present" do
    source_array = [ false, nil, nil, nil]
    expect(reduce,(source_array))

end
