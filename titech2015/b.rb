n,b,c = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).reverse!
ans = 0
for i in 0..n-1 do
	c -= b
	if c >=0
		ans += b * arr[i]
	else
		ans += (c + b) *arr[i]
		break
	end
end
p ans