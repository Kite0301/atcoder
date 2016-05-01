n,k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
for i in 0..n-k do
	pos = arr[0..k+i-1].sort[k-1]
	p arr.index(pos) + 1
end