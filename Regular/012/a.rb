arr = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
day = gets.chomp.to_s
order = arr.index(day)
case order
when 0..4
	puts 5 - order
when 5..6
	puts 0
end