s = gets.chomp.to_s
n = gets.chomp.to_i
arr = s.split("")
for i in 1..n do
	l,r = gets.chomp.split.map(&:to_i)
	brr = arr
	for num in l..r do
		brr[num-1] = arr[r-(num-l)-1]
		p arr
	end
	p arr = brr
end