s = gets.chomp.to_s.downcase!
i = s.index("i")
ans = "NO"
if i
	for num in 0..i do
		s[num] = " "
	end
	c = s.index("c")
	if c
		for num in 0..c do
			s[num] = " "
		end
		t = s.index("t")
		if t
			ans = "YES"
		end
	end
end
puts ans