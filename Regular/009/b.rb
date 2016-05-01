rule = gets.chomp.to_s
n = gets.chomp.to_i

abc = ["","a","b","c","d","e","f","g","h","i"]
# 順番をabcで置換
for num in 1..9 do
	rule.gsub!(num.to_s,abc[num])
end
order = rule.split.map(&:to_s)

arr = Array.new(n)
for i in 0..n-1 do
	str = gets.chomp.to_s
	# まず元の数字をabcで置換
	for num in 1..9
		str.gsub!(num.to_s, abc[num])
	end
	# 次にそれをorderの数字で置換
	for num in 1..9
		str.gsub!(order[num], num.to_s)
	end
	arr[i] = str.to_i
end

arr.sort!

for i in 0..n-1 do
	str = arr[i].to_s
	# まず元の数字をorderで置換
	for num in 1..9
		str.gsub!(num.to_s, order[num])
	end
	# 次にそれをabcの数字で置換
	for num in 1..9
		str.gsub!(abc[num], num.to_s)
	end
	arr[i] = str.to_i
end
puts arr