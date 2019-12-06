chars = {}
offset = 'a'.ord - 1
%w[a e i o u y].each do |char|
  chars[char] = char.ord - offset
end

puts chars
