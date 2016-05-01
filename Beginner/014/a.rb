a = gets.chomp.to_i
b = gets.chomp.to_i
if a%b == 0
	puts 0
else
	puts b - a%b
end