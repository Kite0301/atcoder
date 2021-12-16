n, m = gets.split.map &:to_i
l = (2*n).times.map{ |i| [gets.chop.split(''), 99 - i] }

m.times do |i|
  n.times do |j|
    a = l[2*j][0][i]
    b = l[2*j+1][0][i]
    next if a == b

    w = 'GCPG'.match(a+b) ? 2*j : 2*j+1
    l[w][1] += 100
  end
  l.sort_by!{ |a| a[1] }
  l.reverse!
end

puts l.map{ |a| 100 - a[1] % 100 }
