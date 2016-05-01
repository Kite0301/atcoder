n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
ans = 0
for i in 0..n-1 do
	num = arr[i]
	if num%2 == 1
		if num%3 == 2
			ans += 2
		end
	else
		if num%3 == 0
			ans += 3
		else
			ans += 1
		end
	end
end
p ans