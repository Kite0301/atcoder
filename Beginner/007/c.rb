r,c = gets.chomp.split.map(&:to_i)
s = gets.chomp.split.map(&:to_i)
s = [s[0]-1,s[1]-1]
g = gets.chomp.split.map(&:to_i)
g = [g[0]-1,g[1]-1]
cr = Array.new(r)
for i in 0..r-1 do
	cr[i] = gets.chomp.split("").map(&:to_s)
end
arr = [s]
cr[s[0]][s[1]] = '#'
ans = 0
loop{
	brr = []
	for i in 0..arr.size-1 do
		y = arr[i][0]
		x = arr[i][1]
		if cr[y+1][x] = '.'
			brr << [y+1,x]
			cr[y+1][x] = '#'
		end
		if cr[y-1][x] = '.'
			brr << [y-1,x]
			cr[y-1][x] = '#'
		end
		if cr[y][x+1] = '.'
			brr << [y,x+1]
			cr[y][x+1] = '#'
		end
		if cr[y][x-1] = '.'
			brr << [y,x-1]
			cr[y][x-1] = '#'
		end
	end
	arr = brr
	ans += 1

	if arr.index(g)
		p ans
		break
	end
}