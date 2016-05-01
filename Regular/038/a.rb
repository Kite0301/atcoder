n = gets.chomp.to_i
card = gets.chomp.split.map(&:to_i)
card.sort!.reverse!
ans = 0
for i in 0..n-1 do
	if i%2 == 0
		ans += card[i]
	end
end
p ans