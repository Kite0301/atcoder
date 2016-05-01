n = gets.chomp.to_i
arr = Array.new(n+1, 0)
ans = 0
i = 0
while i < n
	num = gets.chomp.to_i
	if arr[num] == 0
		arr[num] = 1
	elsif arr[num] == 1
		ans += 1
	end
	i += 1
end
p ans