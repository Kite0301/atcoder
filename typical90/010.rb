n=gets.to_i
s1, s2 = 0, 0
list = []
n.times do |i|
  c,s = gets.split.map &:to_i
  if c == 1
    s1 += s
  else
    s2 += s
  end
  list[i] = [s1,s2]
end

gets.to_i.times do
  l,r = gets.split.map &:to_i
  l1,l2 = l == 1 ? [0,0] : list[l-2]
  r1,r2 = list[r-1]
  puts "#{r1-l1} #{r2-l2}"
end
