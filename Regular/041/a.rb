x,y = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i
if y >= k
	puts x + k
else
	puts x + (y * 2) - k
end