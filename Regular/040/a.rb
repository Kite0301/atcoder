n = gets.chomp.to_i
red = 0
blue = 0
n.times{
	s = gets.chomp.to_s
	red += s.count("R")
	blue += s.count("B")
}
if red > blue
	puts "TAKAHASHI"
elsif red < blue
	puts "AOKI"
else
	puts "DRAW"
end