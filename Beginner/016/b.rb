a,b,c = gets.chomp.split.map(&:to_i)
arr = [0,0]
if a + b == c
	arr[0] = 1
end
if a - b == c
	arr[1] = 2
end
case arr[0] + arr[1]
when 0
	puts "!"
when 1
	puts "+"
when 2
	puts "-"
when 3
	puts "?"
end