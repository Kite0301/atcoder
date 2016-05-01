n,a,b = gets.chomp.split.map(&:to_i)
lo = n % (a + b)
if lo == 0
	puts "Bug"
elsif lo - a <= 0
	puts "Ant"
else
	puts "Bug"
end