n,d = gets.split.map &:to_i
list = n.times.map do
  gets.split.map &:to_i
end
list.sort_by! { |a| a[1] }

ans = 1
min = list[0][1]

(n-1).times do |i|
  l, r = list[i+1]
  if l > min + d - 1
    ans += 1
    min = r
  end
end
p ans
