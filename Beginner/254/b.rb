n = gets.to_i
a = []
n.times do |i|
  b = []
  pre = 0
  a.each do |k|
    b << k + pre
    pre = k
  end
  b << 1
  puts b.join(' ')
  a = b
end
