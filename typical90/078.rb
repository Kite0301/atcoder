n,m = gets.split.map &:to_i

list = Array.new(n, 0)
m.times do
  a,b = gets.split.map(&:to_i).sort
  list[b-1] += 1
end
p list.filter{ |n| n == 1 }.size