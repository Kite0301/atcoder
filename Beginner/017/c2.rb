n,m = gets.chomp.split.map(&:to_i)
p = Array.new(m+1,0)
tot = 0
for i in 0..n-1 do
	l,r,s = gets.chomp.split.map(&:to_i)
	tot += s
	for h in l..r do
		p[h] += s
	end
end
p[0] = tot
p tot - p.min