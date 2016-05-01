n,a,b = gets.chomp.split.map(&:to_i)
last = 0
arr = [0]
for i in 1..n do
	dir,l = gets.chomp.split
	l = l.to_i
	if l < a
		l = a
	elsif b < l
		l = b
	end
	arr[i] = l
	if dir == "East"
		last += l.to_i
	else
		last += -l.to_i
	end
end

if last > 0
	puts "East #{last}"
elsif last < 0
	puts "West #{-last}"
else
	puts 0
end