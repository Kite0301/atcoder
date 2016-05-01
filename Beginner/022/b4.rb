n = gets.chomp.to_i
arr = []
sum = 0
for i in 1..n do
	a = gets.chomp.to_i
	if arr[a]
		arr[a] += 1
	else
		arr[a] = 0
	end
end
arr = arr.compact!
for i in 0..arr.size-1 do
	sum += arr[i]
end
p sum