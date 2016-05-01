t = gets.chomp.to_i
n = gets.chomp.to_i
oqt = gets.chomp.split.map(&:to_i)
m = gets.chomp.to_i
cus = gets.chomp.split.map(&:to_i)

ans = "yes"

for i in 0..m-1 do
	buy = false
	for time in 0..t do
		if oqt.index(cus[i]-t+time)
			oqt[oqt.index(cus[i]-t+time)] = nil
			buy = true
		end
		if buy == true
			break
		end
	end
	if buy == false
		ans = "no"
		break
	end
end

puts ans