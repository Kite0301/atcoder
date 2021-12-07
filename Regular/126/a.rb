# 2,2 - 2,2,2
# 2,2 - 2,4
# 4 - 2,4
# 2,2 - 3,3
# 4 - 3,3

t = gets.to_i
l = t.times.map do
  gets.split.map &:to_i
end
l.each do |a, b, c|
  sum = 0

  m34 = [b / 2, c].min
  sum += m34
  c -= m34
  b -= m34 * 2

  m24 = [c / 2, a].min
  sum += m24
  a -= m24

  m23 = [b / 2, a / 2].min
  sum += m23
  a -= m23 * 2

  sum += a / 5
  p sum
end
