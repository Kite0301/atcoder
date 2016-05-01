s = gets.chomp.to_s
arr = ["O","D","I","Z","S","B"]
brr = ["0","0","1","2","5","8"]
for i in 0..s.size-1 do
	if arr.include?(s[i])
		p = arr.index(s[i])
		s[i] = brr[p]
	end
end
puts s