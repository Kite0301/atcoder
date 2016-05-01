n,x = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
b = x.to_s(2)
while b.size != n
	b = "0" + b
end
ans = 0
i = 0
while i < n
	if b[n-1-i] == "1"
		ans += arr[i]
	end
	i += 1
end
p ans