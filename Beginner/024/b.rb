n,t = gets.chomp.split.map(&:to_i)
sum = 0
arr = [0]
# 最初だけセット
arr[1] = gets.chomp.to_i
for i in 2..n do
	arr[i] = gets.chomp.to_i
	if arr[i] - arr[i-1] > t
		sum += t
	else
		sum += arr[i] - arr[i-1]
	end
end
# 最後の開いてる時間
p sum += t