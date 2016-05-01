n = gets.chomp.to_i
p = 1
i = 2
arr = []
loop{
	if arr.index(i)
		break
	end
	if n%i == 0
		p += i + n/i
		arr << i << n/i
	end
	i += 1
}
if p > n
	puts "Abundant" 
elsif p < n
	puts "Deficient"
else	
	puts "Perfect"
end