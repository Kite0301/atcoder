x = gets.chop
n = x.size
ans = 0
x.split('').each_with_index do |v, i|
  ans += (v * (n - i)).to_i
end
p ans


# x = gets.chop
# n = x.size
# ans = b = 0
# x.split('').each_with_index do |v, i|
#   v = v.to_i
#   b += v
#   ans += b * 10 ** (n - i - 1)
# end
# p ans
