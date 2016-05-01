n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
total,num = 0,0
for i in 0..n-1 do
	if arr[i] != 0
		total += arr[i]
		num += 1
	end
end
ans = total/num
if total%num != 0
	ans += 1
end
p ans