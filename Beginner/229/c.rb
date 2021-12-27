n,w = gets.split.map &:to_i
l = n.times.map do
  gets.split.map &:to_i
end
l.sort_by! { |c| c[0] * -1 }
sum = 0
l.each do |c|
  if w - c[1] <= 0
    sum += c[0] * w
    break
  else
    sum += c[0] * c[1]
    w -= c[1]
  end
end
p sum
