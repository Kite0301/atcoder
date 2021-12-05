# n, _ = gets.split.map &:to_i

# f = true
# x, y = nil, nil
# n.times do |i|
#   b = gets.split.map &:to_i
#   next if !f

#   if i == 0
#     x = (b[0]-1) / 7
#     y = (b[0]-1) % 7
#   elsif b[0]-1 != 7 * (x+i) + y
#     f = false
#   end
#   b.each_with_index do |v,j|
#     f = false if b[0] != v - j
#   end
# end

# puts f ? 'Yes' : 'No'


n, _ = gets.split.map &:to_i
l = Array.new(n) { gets.split.map(&:to_i) }
f = true
l.each do |b|
  if b.map { |v| (v-1) / 7 }.uniq.size != 1 || b.map.with_index { |v,j| v - j }.uniq.size != 1
    puts :No
    exit
  end
end
puts l.map.with_index { |v, i| v[0] - 7*i }.uniq.size == 1 ? :Yes : :No
