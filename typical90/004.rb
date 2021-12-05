h,w = gets.split.map &:to_i
list = h.times.map do
  gets.split.map &:to_i
end

row = Array.new(h, 0)
col = Array.new(w, 0)

h.times do |i|
  w.times do |j|
    v = list[i][j]
    row[i] += v
    col[j] += v
  end
end

h.times do |i|
  w.times do |j|
    v = list[i][j]
    print row[i] + col[j] - v
    print(' ') if j != w - 1
  end
  print "\n"
end
