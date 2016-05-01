n,t = gets.chomp.split.map(&:to_i)
gap = Array.new(n)
tot = 0
btot = 0
for i in 0..n-1 do
	a,b = gets.chomp.split.map(&:to_i)
	gap[i] = a-b
	tot += a
	btot += b
end

if btot > t
	ans = -1
elsif btot == t
	ans = n
else		
	ans = 0
	gap.sort!.reverse!
	for i in 0..n-1 do
		if tot > t
			tot -= gap[i]
			ans += 1
		else
			break
		end
	end
end
p ans