def fact(st,n)
	ans = 1
	while n > 0
		ans = ans * (st - n + 1)
		n -= 1
	end
	return ans
end

st = gets.chomp.to_i
n = gets.chomp.to_i
p factup(st,n)