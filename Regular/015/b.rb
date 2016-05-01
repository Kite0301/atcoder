n = gets.chomp.to_i
max = Array.new(n)
min = Array.new(n)
ans = Array.new(6,0)
for i in 0..n-1 do
	a,b = gets.chomp.split.map(&:to_f)
	# 最高気温に関する記録
	if 35 <= a
		ans[0] += 1
	elsif 30 <= a && a < 35
		ans[1] += 1
	elsif 25 <= a && a < 30
		ans[2] += 1
	elsif a < 0
		ans[5] += 1
	end
	# 最低気温に関する記録
	if 25 <= b
		ans[3] += 1
	end
	# 両方
	if b < 0 && 0 <= a
		ans[4] += 1
	end
end

for i in 0..5
	print ans[i]
	if i != 5
		print " "
	end
end
puts ""