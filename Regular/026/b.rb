n = gets.chomp.to_i
p = 0
for i in 1..n/2 do
	if n%i == 0
		p += i
	end
end
if p > n
	puts "Abundant" 
elsif p < n
	puts "Deficient"
else	
	puts "Perfect"
end