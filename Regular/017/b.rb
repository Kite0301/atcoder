n,k = gets.chomp.split.map(&:to_i)
ans = 0
arr = Array.new(n+1)
arr[0] = 0
brr = Array.new(n,0)
for i in 1..n do
	arr[i] = gets.chomp.to_i
	if arr[i] <= arr[i-1]
		brr[i-1] += 1
	end
end

if k != 1
	for i in 1..n-k+1 do
		flag = 0
		for num in i..i+k-2 do
			flag += brr[num]
		end
		if flag == 0
			ans += 1
		end
	end
end
puts ans