n,vt,vk,l = gets.chomp.split.map(&:to_f)
n = n.to_i
while n > 0
	t = l/vt
	l = t*vk
	n -= 1
end

# 小さすぎるときの調整
if l < 0.0000000001
	l = 0
end

puts l