n = gets.chomp.to_f
r = gets.chomp.to_s
sum = 0.0
for i in 0..r.size-1 do
	case r[i]
	when "A"
		sum += 4.0
	when "B"
		sum += 3.0
	when "C"
		sum += 2.0
	when "D"
		sum += 1.0
	end
end
p sum/n