s = gets.chomp.to_s
l = s.size
p = l/2 -1
ans = "YES"
for i in 0..p do
	if s[i] != s[l-i-1]
		if s[i] != "*" && s[l-i-1] != "*"
			ans = "NO"
			break
		end
	end
end

puts ans