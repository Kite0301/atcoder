# l = []
# gets.to_i.times do |i|
#   _,*b = gets.split
#   b = b.join(' ')
#   next if l.include? b
#   l << b
# end
# p l.size

# l = {}
# gets.to_i.times do |i|
#   a,*b = gets.split
#   b = b.join(' ')
#   l[a] = [] unless l[a]
#   next if l[a].include? b
#   l[a] << b
# end
# p l.values.sum{ |r| r.size }

l = {}
gets.to_i.times do |i|
  a,*b = gets.split
  l[a] = [] unless l[a]
  l[a] << b.join(' ')
end
p l.values.sum{ |r| r.uniq.size }
