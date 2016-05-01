arr = gets.chomp.split.map(&:to_i)
b = gets.chomp.to_i
taka = gets.chomp.split.map(&:to_i)
crr = (arr + taka).uniq!

case crr.size
when 6
	ans = 1
when 7
	if taka.include?(b)
		ans = 2
	else
		ans = 3
	end
when 8
	ans = 4
when 9
	ans = 5
else
	ans = 0
end

puts ans