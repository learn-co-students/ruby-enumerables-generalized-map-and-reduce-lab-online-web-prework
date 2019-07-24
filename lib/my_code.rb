(map([1, 2, 3, -9]){|n| n * -1}) .to eq ([-1, -2, -3, -9])
(map(dune){|n| n}) .to eq(dune)
(map([1, 2, 3 , -9]){|n| * 2}) .to eq [2, 4, 6, -18])
(map([1, 2, 3, -9]){|n| n * .to eq ({1, 4, 9, 81})
(reduce(source_array, starting_point){|memo, n| memo + n}) .to eq(106)
(reduce(source_array){|memo,n|memo && n}) .to be_truthy
(reduce(source_array){|memo, n| memo && n}) .to be_falsy
(reduce(source_array){|memo, n|memo||n}) .to eq(true)
(reduce(source_array){|memo, n| memo && n}) .to eq(false)