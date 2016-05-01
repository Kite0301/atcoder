n = gets.chomp.to_i
max = 0
arr = gets.chomp.split.map(&:to_i)
for i in 0..n-1 do
	num = arr[i]
	arr[i] = nil
	nex = arr.index(num)
	if nex
	else
		nex = n
	end
	arr[i] = num
	brr = []
	for k in i..nex-1 do
		brr << arr[k]
	end
	brr.sort!
	if brr.size == 1
		k = 1
	else
		for k in 1..brr.size-1 do
			if brr[k-1] == brr[k]
				break
			end
		end
	end
	if k > max
		max = k
	end
end
p max