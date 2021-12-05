n = gets.to_i
list = n.times.map do
  gets.split.map &:to_i
end

x_zero = 0
y_zero = 0
r = []
(0..(n-1)).to_a.combination(2).to_a.each do |i,j|
  x1, y1 = list[i]
  x2, y2 = list[j]
  x = x1 - x2
  y = y1 - y2
  if x < 0
    x *= -1
    y *= -1
  end
  if x.zero?
    x_zero = 1
  elsif y.zero?
    y_zero = 1
  else
    r << Rational(x,y)
  end
end
p (r.uniq.size + x_zero + y_zero) * 2
