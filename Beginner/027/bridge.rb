n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)

sum = 0
arr.each do |a|
	sum += a
end

if sum % n != 0
	bridge = -1
else
	last = sum / n
	bridge = 0
	gap = {}
	# 1つ目の島
	gap[0] = last - arr[0]
	if gap[0] != 0
		bridge += 1
	end
	# 2つ目以降
	i = 1
	while i < n
		gap[i] = last - arr[i]
		if gap[i] + gap [i-1] != 0
			gap[i] = gap[i] + gap [i-1]
			bridge += 1
		else
			gap[i] = 0
		end
		i += 1
	end
end

p bridge