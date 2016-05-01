n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end
for i in 0..n-1 do
	h = arr[i]
	v = 0
	for s in i+1..n-1 do
		if h >= arr[s]
			v += 1
		else
			break
		end
	end
	for s in 1..i do
		if h >= arr[i-s]
			v += 1
		else
			break
		end
	end
	p v
end