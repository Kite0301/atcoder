a,b,c = gets.chomp.split.map(&:to_i)
if a == b && a == c
	d = a
elsif a == b
	d = c
elsif a == c
	d = b
else
	d = a
end
p d		
		