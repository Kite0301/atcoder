def ex(num)
	p = 1
	for i in 2..num do
		p *= i
	end
	return p
end

n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end
arr.sort!
arr << 0

ans = 0
sam = 1
way = 1
for i in 0..n-1 do
	ans += arr[i] * (n-i)
	if arr[i] == arr[i+1]
		sam += 1
	else
		if sam != 1
			way *= ex(sam)
		end
		sam = 1
	end
	if way > 1000000007
		way %= 1000000007
	end
end
p ans
p way