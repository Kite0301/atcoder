n = gets.to_i
a = gets.split.map &:to_i
x = gets.to_i

ans = (x / a.sum) * n
x %= a.sum
a.each_with_index do |i|
  break if x < 0

  x -= i
  ans += 1
end

p ans
