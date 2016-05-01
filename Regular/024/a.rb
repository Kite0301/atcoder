ans = 0
l,r = gets.chomp.split.map(&:to_i)
larr = gets.chomp.split.map(&:to_i)
rarr = gets.chomp.split.map(&:to_i)
for i in 0..l-1 do
	if rarr.index(larr[i])
		ans += 1
		rarr[rarr.index(larr[i])] = 0
	end
end
p ans