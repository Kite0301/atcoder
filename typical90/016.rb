n = gets.to_i
l = gets.split.map(&:to_i).sort.reverse.uniq

# s = 0
# l.each do |v|
#   q,r = n.divmod v
#   n = r
#   s += q
# end

# p s
