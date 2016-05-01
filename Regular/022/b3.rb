n = gets.chomp.to_i
ans = 0
arr = gets.chomp.split.map(&:to_i)
brr = []
for i in 0..n-1 do
	p = brr.index(arr[i])
	if p
		if ans < brr.size
			ans = brr.size
		end
		brr.slice!(0..p)
	end
	brr << arr[i]
end
if ans < brr.size
	ans = brr.size
end
p ans

# 99点のTLE