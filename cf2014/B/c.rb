def set(n,v)
	if n > v
		return v
	else
		return n
	end
end

s = []
3.times{|n|
	s[n] = gets.chomp.to_s
}
hash = {}
t = s[2]
while t.size > 0
	c = t.count(t[0])
	hash[t[0]] = c
	t.gsub!(t[0],"")
end
ans = "YES"
xs = 0
ys = 0
hash.each{|k,v|
	x = s[0].count(k)
	y = s[1].count(k)
	if x+y < v
		ans = "NO"
		break
	end
	xs += set(x,v)
	ys += set(y,v)
}
n = (s[0].size)/2
if ans == "YES" && (xs < n || ys < n)
	ans = "NO"
end
puts ans