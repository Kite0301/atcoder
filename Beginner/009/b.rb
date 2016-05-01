n = gets.chomp.to_i
arr = [0]
for i in 1..n do
	a = gets.chomp.to_i
	if arr.include?(a)
		arr[i] = 0
	else
		arr[i] = a
	end
end
p arr.sort.reverse[1]