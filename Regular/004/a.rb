n = gets.chomp.to_i
xrr = Array.new(n)
yrr = Array.new(n)
for i in 0..n-1 do
	x,y = gets.chomp.split.map(&:to_i)
	xrr[i] = x
	yrr[i] = y
end
len = []
for i in 0..n-2 do
	for num in i+1..n-1 do
		len << ((xrr[i] - xrr[num])**2 + (yrr[i] - yrr[num])**2)
	end
end
p len.max**(1.0/2).to_f