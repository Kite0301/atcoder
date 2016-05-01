n,k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).sort.reverse!
i = k-1
rate = 0
while i >= 0
	rate = (arr[i] + rate) * 0.5
	i -= 1
end
p rate