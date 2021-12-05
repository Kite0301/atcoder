n,a,b = gets.split.map &:to_i
P,Q,R,S = gets.split.map &:to_i

(P..Q).each do |x|
  (R..S).each do |y|
    x1 = a - b + y
    x2 = a + b - y
    print x == x1 || x == x2 ? '#' : '.'
  end
  print "\n"
end



# k1 = [1-a,1-b].max
# k2 = [n-a,n-b].min
# k3 = [1−a,b−n].max
# k4 = [n−a,b−1].min

# d1 = nil
# d2 = nil

# (k1..k2).each do |i|
#   x = a + i
#   y = b + i
#   if y == S && P <= x && x <= Q
#     d1 = x - P
#     break
#   end
# end

# (k3..k4).each do |i|
#   x = a + k
#   y = b - k
#   if y ==
# end
