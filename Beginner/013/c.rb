n,h = gets.chomp.split.map(&:to_i)
a,b,c,d,e = gets.chomp.split.map(&:to_i)
ans = n*a
for i in 0..n do
	x = (((e*n-h-(b+e)*i).to_f/(d+e).to_f) + 0.00001).ceil
	if x < 0
		x = 0
	end
	cos = a*i + c*x
	ans = [ans,cos].min
end
p ans