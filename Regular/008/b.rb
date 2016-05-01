n,m = gets.chomp.split.map(&:to_i)
name = gets.chomp.to_s
newkit = gets.chomp.to_s
kit = ""
kit << newkit
ans = 1

# まず作れるか確認
for i in 0..n-1 do
	if kit.include?(name[i])
	else
		ans = -1
		break
	end
end

# 作れる場合は続行
if ans != -1
	while name.size > 0
		if kit.include?(name[0])
			kit[kit.index(name[0])] = ""
			name[0] = ""
		else
			kit = kit + newkit
			ans += 1
		end
	end
end

p ans