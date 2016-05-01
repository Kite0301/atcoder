n,m,a,b = gets.chomp.split.map(&:to_i)
ans = 'complete'
arr = [0]
for i in 1..m do
	arr[i] = gets.chomp.to_i
end
for i in 1..m do
	if n <= a
		n += b
	end
	n += -arr[i]
	if n < 0
		ans = i
		break
	end
end

puts ans