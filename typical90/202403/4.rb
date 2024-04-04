h,w = gets.split.map &:to_i
list = []
h.times.map do
  list.concat(gets.split.map(&:to_i))
end
rows = h.times.map do |n|
  start_index = n * w
  end_index = start_index + w - 1
  list[start_index..end_index].sum
end
cols = w.times.map do |n|
  sum = 0
  h.times do |i|
    sum += list[i * w + n]
  end
  sum
end
list.each_with_index do |n, i|
  r = i / w
  c = i % w
  print (rows[r] + cols[c] - n)
  if c == w - 1
    print "\n"
  else
    print ' '
  end
end
