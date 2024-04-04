
# t = 1
# a = Array.new(100001, 1)
# 100000.times do |i|
#   t *= (i+1)
#   # t %= N
#   a[i+1] = t
# end

N = 10 ** 9 + 7

def f(x, y)
  (x..y).inject(1,:*)
end

n,l = gets.split.map &:to_i
ans = 0
(n/l+1).times do |i|
  a, b = [i, n - l * i].sort
  ans += f(b+1, a+b) / f(1, a)
  ans %= N
end
p ans
