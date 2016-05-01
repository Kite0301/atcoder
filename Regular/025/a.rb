arr = gets.chomp.split.map(&:to_i)
brr = gets.chomp.split.map(&:to_i)
sum = 0
for i in 0..6 do
	if arr[i] > brr[i]
		sum += arr[i]
	else
		sum += brr[i]
	end
end
p sum