def set_c(x,y)
	p = 0; q = 0
	lim = [x,y].min
	if lim == 0
		return 1
	else
		lim.times{|n|
			p += x+y-n
			q += n+1
		}
		return p/q
	end
end

q = gets.chomp.to_i
ans = Array.new(q,0)
for i in 0..q-1 do
	y = []
	a,b,c = gets.chomp.split.map(&:to_i)
	x = c/a
	y[0] = c/b
	ans[i] += y[0] + 1
	for h in 1..x do
		y = ((c - a*h).to_f/b).to_i
		for k in 0..y do
			ans[i] += set_c(h,k)
			ans[i] %= 1000000007
		end 
	end 
end
puts ans