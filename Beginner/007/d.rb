a,b = gets.chomp.split.map(&:to_i)
count = 0
for i in a..b do
	for n in 1..i.size do
		case i/10**(n-1) % 10
		when 4,9
			count += 1
		break
		end
	end
end
p count