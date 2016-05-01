s = gets.chomp.to_s
arr = s.split("")
ans = ''
num = 1
for i in 1..arr.size do
	if arr[i] == arr[i-1]
		num += 1
	else
		ans << arr[i-1] + num.to_s
		num = 1
	end
end
puts ans