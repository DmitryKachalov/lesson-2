#arr = 10.step(100, 5).to_a
#
#puts arr

arr = []
(10..100).step(5) do |i|
  arr.push(i)
end

puts arr

