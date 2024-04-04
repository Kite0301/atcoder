N = 10 ** 9 + 7
n = gets.to_i
ans = 1
n.times do
  l = gets.split.map &:to_i
  a = l.sum
  a %= N
  ans *= a
  ans %= N
end
p ans
