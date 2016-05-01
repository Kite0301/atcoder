n = gets.chomp.to_i
case n%10
when 0
	ans = n * 10
when 1..6
	ans = (n/10)*100 + (n%10)*15
when 7..9
	ans = ((n/10)+1)*100
end
puts ans