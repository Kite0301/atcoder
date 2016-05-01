def area(x,y,a,b,c,d)
	return s = ((a-x)*(d-y) - (c-x)*(b-y)).abs
end

n = gets.chomp.to_i
xrr = Array.new(n)
yrr = Array.new(n)
ans = 0

for i in 0..n-1 do
	xrr[i],yrr[i] = gets.chomp.split.map(&:to_i)
end

arr = Array.new(n) { |i| i }
com = arr.combination(3).to_a

for i in 0..com.size-1 do
	p = com[i]
	s = area(xrr[p[0]],yrr[p[0]],xrr[p[1]],yrr[p[1]],xrr[p[2]],yrr[p[2]])
	if s%2 == 0 && s != 0
		ans += 1
	end
end

p ans