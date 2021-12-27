x, y = gets.split.map &:to_i
d = y - x
p(
  if d <= 0
    0
  elsif d % 10 == 0
    d / 10
  else
    1 + d / 10
  end
)
