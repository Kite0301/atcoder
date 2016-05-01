s = gets.chomp.to_s
t = gets.chomp.to_s
arr = ["a","t","c","o","d","e","r"]
ans = "You can win"
for i in 0..s.size-1 do
	if s[i] == t[i]
	elsif s[i] == "@" && arr.include?("#{t[i]}")
	elsif t[i] == "@" && arr.include?("#{s[i]}")
	else
		ans = "You will lose"
		break
	end
end
puts ans