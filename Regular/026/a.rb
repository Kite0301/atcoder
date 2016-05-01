n,a,b = gets.chomp.split.map(&:to_i)
ans = 0
for i in 1..n do
	case i
	when 1..5
		ans += b
	else
		ans += a		
	end
end
p ans