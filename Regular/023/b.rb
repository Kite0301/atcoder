r,c,d = gets.chomp.split.map(&:to_i)
arr = Array.new(r)
for i in 0..r-1 do
	arr[i] = gets.chomp.split.map(&:to_i)
end
can = d%2
brr = []
for i in 0..r-1 do
	for h in 0..c-1 do
		if (i+h)%2 != can || i+h > d
			arr[i][h] = 0
		end
		brr << arr[i][h]
	end
end
p brr.max