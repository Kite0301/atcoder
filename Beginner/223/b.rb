s = gets.chop

l = s.size.times.map do |i|
  t = s.slice!(0, 1)
  s = s + t
  s
end
l.sort
puts l[0]
puts l[-1]
