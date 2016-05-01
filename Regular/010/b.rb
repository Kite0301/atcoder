n = gets.chomp.to_i

def day_number(m,d)
	num = d
	for i in 0..m-1 do
		case i
		when 2
			num += 29
		when 4,6,9,11
			num += 30
		when 1,3,5,7,8,10
			num += 31
		end
	end
	return num
end

arr = []
# まずは土日をarrにぶちこむ
for i in 1..366 do
	if i%7 == 1 || i%7 == 0
		arr << i
	end
end

# 祝日をarrにぶちこむ
for i in 1..n do
	m,d = gets.chomp.split("/").map(&:to_i)
	num = day_number(m,d)
	while arr.include?(num)
		num += 1
	end
	arr << num
end

ans = 0
cou = 0
for i in 1..367 do
	if i == 367
		if ans < cou
			ans = cou
		end
	else
		if arr.include?(i)
			cou += 1
		else
			if ans < cou
				ans = cou
			end
			cou = 0
		end
	end
end

puts ans