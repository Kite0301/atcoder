n,m = gets.split.map &:to_i

l = n.times.map do
  []
end
m.times do
  a,b = gets.split.map &:to_i
  l[a-1] << (b-1)
  l[b-1] << (a-1)
end

if l.find{ |r| r.size > 2 }
  puts :No
  exit
end

l.each_with_index do |r, index|
  next if r.size == 0

  if r.size == 1
    a = r[0]
    if l[a].size <= 1
      l[a] = []
      l[index] = []
    end
  else
    a, b = r
    l[a].map! { |e| e == index ? b : e }
    l[b].map! { |e| e == index ? a : e }
    l[index] = []
  end
end

puts l.find{ |r| r.size > 1 } ? :No : :Yes