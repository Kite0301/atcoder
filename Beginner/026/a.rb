a = gets.chomp.to_i
max = 0
x = 1
while x < a
	y = a - x
	multi = x * y
	if max < multi
		max = multi
	end	
	x += 1
end
p max