n = gets.chomp.to_i
hash = {}
for i in 1..n do
	s = gets.chomp.to_s
	if hash.include?(s)
		hash[s] += 1
	else
		hash[s] = 1
	end
end
puts hash.sort {|(k1, v1), (k2, v2)| v2 <=> v1 }.to_a.first[0]