m = gets.chomp.to_i
ans = ""
if m < 100
	ans = "00"
elsif 100 <= m && m <= 5000
	ans = (m/100).to_s
elsif 6000 <= m && m <= 30000
	ans = (m/1000 + 50).to_s
elsif 35000 <= m && m <= 70000
	ans = (((m/1000 - 30)/5) + 80).to_s
elsif 70000 <= m
	ans = "89"
end

if ans.size == 1
	ans = "0" + "#{ans}"
end

puts ans