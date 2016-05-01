n = gets.chomp.to_i
ans = 0
arr = gets.chomp.split.map(&:to_i)
brr = Array.new(10001,-1)
st = 0
for i in 0..n-1 do
	if brr[arr[i]] != -1
		l = i - st
		st = brr[arr[i]] + 1
		if ans < l
			ans = l
		end
		if i == n-1
			i = 0
		end
	end
	brr[arr[i]] = i
end
# 最後の確認
l = i - st + 1
if ans < l
	ans = l
end
# 出力
p ans