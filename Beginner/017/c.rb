n,m = gets.chomp.split.map(&:to_i)
l = Array.new(n)
r = Array.new(n)
s = Array.new(n)
tot = 0
for i in 0..n-1 do
	l[i],r[i],s[i] = gets.chomp.split.map(&:to_i)
	tot += s[i]
end
ans = Array.new(m)
for num in 0..m-1 do
	p = 0
	for i in 0..n-1 do
		if l[i] <= num+1 && r[i] >= num+1
			p += s[i]
		end
	end
	ans[num] = tot - p
end
p ans.max