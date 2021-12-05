n,x = gets.split.map &:to_i
a = gets.split.map &:to_i

loop do
  y = a[x-1]
  break if y.nil?
  a[x-1] = nil
  x = y
end

p a.count(nil)
