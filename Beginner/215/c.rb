# def f(n)
#   n == 1 ? 1 : n * f(n-1)
# end

s, k = gets.split
k = k.to_i
l = s.split('').sort
puts l.permutation.to_a.map { |a| a.join('') }.uniq.sort[k-1]
# u = l.uniq

# t = f(l.size)
# u.each do |x|
#   t /= f(l.count(x))
# end
# r = t / u.size

# p r
# p u
