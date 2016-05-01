n,l = gets.chomp.split.map(&:to_i)
arr = Array.new(l)
for i in 0..l-1 do
	arr[i] = gets.chomp.to_s
	for num in 0..n-1 do
		arr[i][num] = ""
	end
	arr[i] = " " + arr[i] + " "
end
point = gets.chomp.to_s
ans = (point.index("o"))/2 + 1
i = l-1
while i >= 0
	if arr[i][ans-1] == "-"
		ans += -1
	elsif arr[i][ans] == "-"
		ans += 1
	end	
	i += -1
end

puts ans