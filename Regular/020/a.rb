a,b = gets.chomp.split.map(&:to_i).map(&:abs)
if a < b
	puts "Ant"
elsif b < a
	puts "Bug"
elsif a == b
	puts "Draw"
end