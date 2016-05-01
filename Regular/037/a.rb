n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
ans = 0
for i in 0..n-1 do
	if arr[i] < 80
		ans += 80 - arr[i]
	end
end
p ans