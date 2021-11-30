n = gets.to_i
xs, ys = [[], []]
n.times do
  x, y = gets.split.map(&:to_i)
  xs << x
  ys << y
end

xs.sort!
ys.sort!

x_max = xs[-1]
x_min = xs[0]
y_max = ys[-1]
y_min = ys[0]
x1 = (x_max - x_min).abs
y1 = (y_max - y_min).abs
x2 = [(x_max - xs[1]).abs, (xs[-2] - x_min)].max
y2 = [(y_max - ys[1]).abs, (ys[-2] - y_min)].max

p (
  if x1 == y1
    x1
  elsif x1 > y1
    if xs.count { |v| v == x_max || v == x_min } == 2
      [y1, x2].max
    else
      x1
    end
  else
    if ys.count { |v| v == y_max || v == y_min } == 2
      [x1, y2].max
    else
      y1
    end
  end
)
