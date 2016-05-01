y = gets.chomp.to_i
ans = 'NO'
if y%4 == 0
	ans = 'YES'
end
if y%100 == 0
	ans = 'NO'
end
if y%400 == 0
	ans = 'YES'
end
puts ans