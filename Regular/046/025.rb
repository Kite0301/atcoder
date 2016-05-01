m = gets.to_i
n = gets.to_i
a = Array.new(24,0)
n.times{
  x,y,c = gets.split.map(&:to_i)
  a[x] += c
}

p a