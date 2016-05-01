m,n,N = gets.chomp.split.map(&:to_i)
ans = N
pen = N
lit = 0

while pen > 0
	lit += pen
	pen = lit/m*n
	ans += pen
	lit = lit%m
end

puts ans