n,k = gets.chomp.split.map(&:to_i)
a = 0
f = 0
for i in 0..n-1 do
	a += gets.chomp.to_i
	if a >= k && f == 0
		ans = i + 1
		f += 1
	end
end
p ans