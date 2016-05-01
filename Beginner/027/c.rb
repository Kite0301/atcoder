n = gets.chomp.to_i
if n == 1
	puts "Aoki"
else
	p = 2
	i = 1
	loop{
		p += 4**i
		if n < p
			puts "Takahashi"
			break
		end
		p += 4**i
		if n < p
			puts "Aoki"
			break
		end
		i += 1
	}
end