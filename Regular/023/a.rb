y = gets.chomp.to_i
m = gets.chomp.to_i
d = gets.chomp.to_i
case m
when 1,2
	y -= 1
	m += 12
end
n = 365*y + y/4 - y/100 + y/400 + 306*(m+1)/10 + d -429
p 735369 - n