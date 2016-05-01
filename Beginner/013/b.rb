s = gets.chomp.to_i
g = gets.chomp.to_i
min = (s-g).abs
if min <= 5
	puts min
else
	puts 10-min
end