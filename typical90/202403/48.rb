# n, k = gets.split.map &:to_i
# l = []
# n.times do |i|
#   l = l[..(k-1)] if k < i * 2
#   a,b = gets.split.map(&:to_i)
#   l.concat([a-b, b])
#   l.sort!.reverse!
# end
# p l[..(k-1)].sum


n, k = gets.split.map &:to_i
l = []
n.times do |i|
  a,b = gets.split.map(&:to_i)
  l.concat([a-b, b])
end
p l.sort.reverse[..(k-1)].sum
