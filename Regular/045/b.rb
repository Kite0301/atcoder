n,m = gets.chomp.split.map(&:to_i)
s = Array.new(m)
t = Array.new(m)
for i in 0..m-1 do
	s[i],t[i] = gets.chomp.split.map(&:to_i)
end
ans = []

arr = Array.new(m,false)
brr = Array.new(m,true)
for i in 1..n do
	while s.include?(i)
		p = s.index(i)
		arr[p] = true
		s[p] = 0
	end

	if arr.count(true) == 1
		brr[arr.index(true)] = false
	end

	la = []
	while t.include?(i)
		q = t.index(i)
		la << q
		t[q] = 0
	end

	for h in 0..la.size-1 do
		if brr[la[h]] == true
			ans << la[h] + 1
		end
		arr[la[h]] = false
	end
end
p ans.size
puts ans