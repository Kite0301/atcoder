n,k = gets.chomp.split.map(&:to_i)
ans = 0
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end

if k == 1
	ans = n
else
	flag = 0
	for i in 0..n-2 do
		if arr[i+1] > arr[i]
			flag += 1
			if flag >= k-1
				ans += 1
			end
		else
			flag = 0
		end
	end
end
p ans