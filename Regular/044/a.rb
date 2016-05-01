n = gets.chomp.to_i
if n%2 != 0 && n%3 != 0 && n%5 != 0
	ans = "Prime"
elsif n == 2 || n == 3 || n == 5
	ans = "Prime"
else
	ans = "Not Prime"
end
if n == 1
	ans = "Not Prime"
end
puts ans