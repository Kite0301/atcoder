n,k = gets.chomp.split.map(&:to_i)
arr = Array.new(n)
ans = -1
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
	if i >= 2
		if arr[i] + arr[i-1] + arr[i-2] < k
			if ans == -1
				ans = i + 1
			end
		end
	end
end
p ans