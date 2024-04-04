N=46
gets
a, b, c = 3.times.map do
  l = Array.new(46, 0)
  gets.split.map(&:to_i).each { |i| l[i%N]+=1 }
  l
end
ab = Array.new(46, 0)
a.each_with_index do |x, i|
  b.each_with_index do |y, j|
    ab[(i+j)%N] += x*y
  end
end
ans = 0
ab.each_with_index do |x, i|
  c.each_with_index do |y, j|
    ans += x*y if (i+j)%N == 0
  end
end
p ans
