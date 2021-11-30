require 'set'

h,w,c,q = gets.split.map(&:to_i)

hs = Set.new
ws = Set.new
colors = Array.new(c, 0)
tnc = []
q.times do
  tnc << gets.split.map(&:to_i)
end
tnc.reverse.each do |t, n, col|
  if t == 1
    next if ws.include? n

    colors[col - 1] += w - hs.size
    ws << n
  else
    next if hs.include? n

    colors[col - 1] += h - ws.size
    hs << n
  end
end
puts colors.join(' ')
