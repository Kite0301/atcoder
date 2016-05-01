n = gets.chomp.to_i
arr = []
count = 0
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end

for i in 1..arr.max do
	if arr.count(i) >= 2
		count += arr.count(i) -1
	end
end

puts count