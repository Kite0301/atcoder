s = gets.chop
l = []
s.size.times do |i|
  t = s.slice!(0, 1)
  l << s + t
  s += t
end
l.sort!
puts l[0]
puts l[-1]
