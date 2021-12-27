n,k = gets.split.map &:to_i
list = gets.split.map &:to_i

s = 0
b = list.map { |a| s += a }
obj = {}
b.each do |a|
  obj[a] ||= 0
  obj[a] += 1
end

ans = 0
n.times do |i|
  ans += obj[k].to_i
  obj[b[i]] -= 1
  k += list[i]
end

p ans
