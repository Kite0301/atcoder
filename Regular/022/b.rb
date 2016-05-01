n = gets.chomp.to_i
max = 0
arr = gets.chomp.split.map(&:to_s)
for i in 0..n-1 do
	brr = []
	for num in i..n-1 do
		if brr.count(arr[num]) == 0
			brr << arr[num]
			if num == n-1 && brr.size > max
				max = brr.size
			end
		else
			if brr.size > max
				max = brr.size
			end
			break
		end
	end
end
p max