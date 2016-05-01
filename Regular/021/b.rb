n = gets.chomp.to_i
arr = Array.new(n,"")
brr = Array.new(n)
for i in 0..n-1 do
	int = gets.chomp.to_i
	brr[i] = int.to_s(2)
end
brr[n] = brr[0]
# ２進数表記の長さを統一
p max = brr.max.size
for i in 0..n-1 do
	less = max - brr[num].size
	for i in 0..less do
		brr[num] = "0" + brr[num]
	end
end
# arrをセットしていく
for i in 0..n-1 do
	for num in 0..max-1 do
		if brr[i][num] == "0"
		else
		end
	end
end

# mu
# zu
# i