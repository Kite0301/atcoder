n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
ans = n
for i in 0..n-1 do
	ans += arr[i]
end
ans += arr.max
p ans