n = gets.chomp.to_i
hash = {}
n.times{
	a,b = gets.chomp.split.map(&:to_i)
	if hash[a]
		hash[a] += 1
	else
		hash[a] = 1
	end
	if hash[b+1]
		hash[b+1] -= 1
	else
		hash[b+1] = 1
	end
}
s = 0
ans = 0
arr = hash.sort
for i in 0..arr.size-1 do
	s += arr[i][1]
	ans = [ans,s].max
end
p ans

# ダメ