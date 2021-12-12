n = gets.to_i

l = n.times.map do
  gets.chop
end

ans = ''
t = 0
l.uniq.each do |str|
  c = l.count(str)
  if c > t
    ans = str
    t = c
  end
end

puts ans