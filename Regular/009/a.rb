n = gets.chomp.to_i
sum = 0
for i in 1..n do
	a,b = gets.chomp.split.map(&:to_i)
	sum += a*b
end
puts (sum*105)/100