n = gets.chomp.to_i
arr = Array.new(1000002, 0)
n.times{
	a,b = gets.chomp.split.map(&:to_i)
	arr[a] += 1
	arr[b+1] -= 1
}
s = 0
ans = 0
(arr.size).times{ |i|
	s += arr[i]
	if ans < s
		p ans = s
	end
}
p ans

# おけ