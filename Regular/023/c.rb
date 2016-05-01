def fact(st,n)
	ans = 1
	while n > 0
		ans = ans * (st - n + 1)
		n -= 1
	end
	return ans
end

ans = 0
n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
tako = 0
st = 0
for i in 0..n-1 do
	if arr[i] == -1
		tako += 1
		# 初の-1の時
		if tako == 1
			st = arr[i-1]
		end
	elsif tako > 0
		# この次の行が違う
		ans += fact(tako+1,arr[i]-st)/fact(arr[i]-st,arr[i]-st)
		tako = 0
	end
	if ans >= 1000000007
		ans = ans%1000000007
	end
end
p ans