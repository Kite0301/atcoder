n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
ans = 0
for i in 0..n-1 do
	ans += arr[i] * (2 ** (n-i-1))
end
p ans