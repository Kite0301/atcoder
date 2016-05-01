n = gets.chomp.to_i
ans = 'YES'
for i in 2..n-1 do
	if n%i == 0
		ans = 'NO'
		break
	end
end
puts ans